# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipes::ListTitles.new.call
  end
end
