using FoodOptimizationApp.Domain.Repositories;
using FoodOptimizationApp.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodOptimizationApp.Infrastructure
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly FoodContext _context;
        public IIngredientRepository Ingredients { get; }
        public IRecipeRepository Recipes { get; }

        public UnitOfWork(FoodContext context, IIngredientRepository ingredients, IRecipeRepository recipes)
        {
            _context = context;
            Ingredients = ingredients;
            Recipes = recipes;
        }

        public async Task<int> SaveChangesAsync() => await _context.SaveChangesAsync();
        public void Dispose() => _context.Dispose();
    }
}
