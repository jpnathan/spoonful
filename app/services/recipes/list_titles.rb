# frozen_string_literal: true

module Recipes
  class ListTitles
    def initialize(recipes: ContentfulCms::Resources::Recipes.new)
      @recipes = recipes
    end

    def call
      recipes.list_titles
    end

    private

    attr_reader :recipes
  end
end
