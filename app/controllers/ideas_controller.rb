class IdeasController < ApplicationController
  
  def new
    @idea = Idea.new
  end

  def index
    @idea = Idea.new
    @ideas = Idea.all
  end

  def create
    @ideas = Idea.all
    @idea = Idea.new(idea_params)
    @idea.save
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @ideas = Idea.all
    @idea = Idea.find(params[:id])
    @idea.update_attributes(idea_params)
  end
 
  def destroy
    @idea = Idea.find(params[:id]) 
    @ideas = Idea.all
    @idea.destroy
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
