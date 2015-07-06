class WikisController < ApplicationController

  def index
    @wikis = current_user.wikis
  end

  def show
    @wiki = Wiki.find(params[:id])
    @wikis = @wiki
    authorize @wiki
  end

  def new
    @wiki = Wiki.new
  end

  def create
     @wiki = Wiki.new
     @wiki.save
  end

  def edit
    @wiki = Wiki.find(params[:id])
    authorize @wiki
  end

  def destroy
    @wiki = Wiki.find(params[:id])
    authorize @wiki
    @wiki.delete
    redirect_to @wiki
  end

  def update
    @wiki = Wiki.find(params[:id])
    if @wiki.update_attributes(params.require(:wiki).permit(:title, :body, :private, :user))
      flash[:notice] = "Wiki was saved."

        redirect_to @wiki
   else
     flash[:error] = "Error saving wiki. Please try again"
     render :edit
   end
  end
end

