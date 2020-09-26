require 'pry'
class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)

  end
  
  private
  
  
  def recipe_params 
    binding.pry
    params.require(:recipe).permit(:title, ingredients_attributes: [:name, :quantity])
    
  end
  
end
