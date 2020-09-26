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
    Recipe.create()
  end
  
  private
  
  
  def recipe_params 
    params.require(:person).permit(:title)
    
  end
  
end
