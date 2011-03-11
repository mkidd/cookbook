class DirectionsController < ApplicationController
  
  before_filter :load_recipe
  
  def create
    @direction = Direction.new(params[:direction])
    if @direction.save
      redirect_to directions_path, :notice => 'Direction successfully added.'
    else
      render :action => 'new'
    end
  end
  
  def destroy
    @direction = @recipe.directions.find(params[:id])
    @direction.destroy
    redirect_to @recipe, :notice => 'Direction deleted'
  end

  private
    def load_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end  
end
