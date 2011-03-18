class RecipesController < ApplicationController
# GET /articles
# GET /articles.xml
def index
    @recipes = Recipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml {render :xml => @recipes}
    end
end

# GET /articles/1
# GET /articles/1.xml
def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @recipes }
    end
end

# GET /articles/new
# GET /articles/new.xml
def new
    @recipe = Recipe.new
end

# GET /articles/1/edit
def edit
    @recipe = Recipe.find(params[:id])
end

# POST /articles
# POST /articles.xml
def create
  @recipe = Recipe.new(params[:recipe])

  if @recipe.save
    redirect_to recipe_url(@recipe), :notice => 'Recipe successfully added.'
  else
    redirect_to new_recipe_url
  end
end

# PUT /articles/1
# PUT /articles/1.xml
def update
  @recipe = Recipe.find(params[:id])

  respond_to do |format|
    if @recipe.update_attributes(params[:article])
      format.html { redirect_to(@recipe, :notice => 'Recipe was successfully updated.') }
      format.xml  { head :ok }
    else
      format.html { render :action => "edit" }
      format.xml  { render :xml => @recipe.errors, :status => :unprocessable_entity }
    end
  end
end

# DELETE /articles/1
# DELETE /articles/1.xml
def destroy
  @recipe = Recipe.find(params[:id])
  @recipe.destroy

  respond_to do |format|
    format.html { redirect_to(recipes_url) }
    format.xml  { head :ok }
  end
end

def add_ingredient
  @ingredient = Ingredient.new
end

def add_direction
  @direction = Direction.new
end

end
