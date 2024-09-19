using FoodOptimizationApp.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Models = FoodOptimizationApp.Domain.Models;
using FoodOptimizationApp.Domain.Entities;

namespace FoodOptimizationApp.Application
{
    public class FoodService
    {
        private readonly IUnitOfWork _unitOfWork;

        public FoodService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task<List<Models.Recipe>> DetermineOptimalFoodCombinationAsync()
        {
            try
            {
                // Eagerly load RecipeIngredients and their corresponding Ingredients
                IEnumerable<Recipe> recipes = await GetRecipes();

                var ingredients = await _unitOfWork.Ingredients.GetAllAsync();

                // Logic to determine optimal combination based on available ingredients
                var optimalRecipes = new List<Recipe>();

                foreach (var recipe in recipes)
                {
                    bool canMake = CheckIfCanMake(ingredients, recipe);

                    if (canMake)
                    {
                        optimalRecipes.Add(recipe);

                        // Update ingredient quantities
                        UpdateIngredientQuantities(ingredients, recipe);
                    }
                }

                await _unitOfWork.SaveChangesAsync();

                List<Models.Recipe> result = TranslateRecipeEntitiesToModels(optimalRecipes);

                return result;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        private async Task<IEnumerable<Recipe>> GetRecipes()
        {
            return await _unitOfWork.Recipes
                                .GetAllAsync(includes: query => query
                                        .Include(r => r.RecipeIngredients)
                                        .ThenInclude(ri => ri.Ingredient));
        }

        private static bool CheckIfCanMake(IEnumerable<Ingredient> ingredients, Recipe recipe)
        {
            return recipe.RecipeIngredients.All(ri =>
            {
                var ingredient = ingredients.FirstOrDefault(i => i.Id == ri.IngredientId);
                return ingredient != null && ingredient.QuantityAvailable >= ri.QuantityNeeded;
            });
        }

        private void UpdateIngredientQuantities(IEnumerable<Ingredient> ingredients, Recipe recipe)
        {
            foreach (var ri in recipe.RecipeIngredients)
            {
                var ingredient = ingredients.First(i => i.Id == ri.IngredientId);
                ingredient.QuantityAvailable -= ri.QuantityNeeded;
                _unitOfWork.Ingredients.Update(ingredient);
            }
        }

        private static List<Models.Recipe> TranslateRecipeEntitiesToModels(List<Recipe> optimalRecipes)
        {
            return (from Recipe recipe in optimalRecipes
                    let recipeResult = new Models.Recipe()
                    {
                        Id = recipe.Id,
                        Name = recipe.Name,
                        PeopleServed = recipe.PeopleServed,
                    }
                    select recipeResult).ToList();
        }
    }
}