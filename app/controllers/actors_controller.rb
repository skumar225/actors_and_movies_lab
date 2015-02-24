class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def create
    form_data = params.require(:actor).permit(:name)
    Actor.create form_data
    redirect_to actors_path
  end

  def new
    @actor =Actor.new 
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def update
    form_data = params.require(:actor).permit(:name)
    actor = Actor.find(params[:id])
    actor.update_attributes form_data
    redirect_to actors_path(actor)
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to actors_path
  end
end
