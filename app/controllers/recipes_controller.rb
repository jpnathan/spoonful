# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes_titles = RecipesService::ListRecipesTitles.new.call
  end

  def show
    @recipe = RecipesService::GetRecipe.new.call(recipe_id: params[:id])
  end
end
