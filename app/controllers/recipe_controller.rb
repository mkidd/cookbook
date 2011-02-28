class RecipeController < ApplicationController
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
      @recipes = Recipe.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @recipes }
      end
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
      @recipes = Recipe.new

      respond_to do |format|
        format.html # new.html.erb
        format.xml  { render :xml => @recipes }
      end
  end

  # GET /articles/1/edit
  def edit
      @recipes = Recipe.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create
    @recipe = Recipe.new(params[:recipe])

    respond_to do |format|
      if @article.save
        format.html { redirect_to(@recipe, :notice => 'Recipe was successfully created.') }
        format.xml  { render :xml => @recipe, :status => :created, :location => @article }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @recipe.errors, :status => :unprocessable_entity }
      end
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
end
