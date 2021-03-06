class RecipeIngredientsController < ApplicationController
  
  def new
    @recipe = Recipe.find(params[:recipe_id])
  end
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.recipe_ingredients.create(recipe_ingredient_params)
    render 'new'
  end
  
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.recipe_ingredients.find(params[:id])
    @ingredient.destroy
    render 'new'
  end
  
  private
    def recipe_ingredient_params
      params.require(:recipe_ingredient).permit(:ingredient_id, :amount, :units)
    end
end
