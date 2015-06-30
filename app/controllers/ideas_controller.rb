class IdeasController < ApplicationController
  def index
    @idea = Idea.new
    @ideas = Idea.all
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      respond_to do |f|
        f.html { redirect_to @idea}
        f.js
      end
    else
      render :new
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :description)
  end
end
