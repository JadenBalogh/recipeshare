class PagesController < ApplicationController
  def search
    @search_id = params[:ingredient_id]
    @recipes = Recipe.joins(:recipe_ingredients).where("recipe_ingredients.ingredient_id = ?", @search_id)
  end
end
