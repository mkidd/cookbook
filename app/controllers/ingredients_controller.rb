class IngredientsController < ApplicationController

    before_filter :load_recipe

    def create
      @ingredient = Ingredient.new(params[:ingredient])
      if @ingredient.save
        redirect_to ingredients_path, :notice => 'Ingredient successfully added.'
      else
        render :action => 'new'
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
end
