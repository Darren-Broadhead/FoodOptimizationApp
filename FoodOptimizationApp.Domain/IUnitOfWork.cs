using FoodOptimizationApp.Domain.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FoodOptimizationApp.Domain
{
    public interface IUnitOfWork : IDisposable
    {
        IIngredientRepository Ingredients { get; }
        IRecipeRepository Recipes { get; }
        Task<int> SaveChangesAsync();
    }
}
