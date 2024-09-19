using FoodOptimizationApp.Application;
using Microsoft.AspNetCore.Mvc;

namespace FoodOptimizationApp.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class FoodController : ControllerBase
    {
        private readonly FoodService _foodService;

        public FoodController(FoodService foodService)
        {
            _foodService = foodService;
        }

        [HttpGet("optimal")]
        public async Task<IActionResult> GetOptimalFoodCombination()
        {
            List<Domain.Models.Recipe> result = await _foodService.DetermineOptimalFoodCombinationAsync();
            return Ok(result);
        }
    }
}
