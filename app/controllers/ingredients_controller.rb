class IngredientsController < ApplicationController

    before_filter :load_recipe, :except => [:destroy, :index, :edit, :update]
    def index
      @ingredients = Ingredient.all
    end

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

    def edit
      @ingredient = Ingredient.find(params[:id])
    end
    
    def update
      @ingredient = Ingredient.find(params[:id])
      if @ingredient.update_attributes(params[:ingredient])
        redirect_to ingredients_path, :notice => 'Updated ingredient information successfully.'
      else
        render :action => 'edit'
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
