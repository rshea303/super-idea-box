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

  private

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
