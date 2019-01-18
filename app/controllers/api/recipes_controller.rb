class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render 'index.json.jbuilder'
  end

  def show
    @recipe = Recipe.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @recipe = Recipe.new(
                          title: params[:title],
                          chef: params[:chef],
                          ingredients: params[:ingredients],
                          directions: params[:directions],
                          prep_time: params[:prep_time]
                        )
    @recipe.save
    render 'show.json.jbuilder'
  end
end








