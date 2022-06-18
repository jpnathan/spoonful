# frozen_string_literal: true

module RecipesService
  class ListRecipesTitles
    def initialize(recipes: ContentfulCms::Resources::Recipes.new)
      @recipes = recipes
    end

    def call
      recipes.list
    end

    private

    attr_reader :recipes
  end
end
