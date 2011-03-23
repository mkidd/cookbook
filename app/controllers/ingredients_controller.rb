class IngredientsController < ApplicationController

    before_filter :load_recipe, :except => :destroy
    def new
        @ingredient = Ingredient.new
    end

    def create
      #@ingredient = Ingredient.new(params[:ingredient])
      @ingredient = @recipe.ingredients.new(params[:ingredient])
      if @ingredient.save
        redirect_to @recipe, :notice => 'Ingredient successfully added.'
      else
        redirect_to @recipe, :alert => 'Unable to add ingredient'
      end
    end

    def destroy
      @ingredient = @recipe.ingredients.find(params[:id])
      @ingredient.destroy
      redirect_to @recipe, :notice => 'Ingredient deleted'
    end

    private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end  
end
