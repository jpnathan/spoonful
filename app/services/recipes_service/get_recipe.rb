# frozen_string_literal: true

module RecipesService
  class GetRecipe
    def initialize(recipes: ContentfulCms::Resources::Recipes.new)
      @recipes = recipes
    end

    def call(recipe_id:)
      recipes.find(recipe_id: recipe_id)
    end

    private

    attr_reader :recipes
  end
end
