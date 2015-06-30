class IdeasController < ApplicationController
  def index
    @idea = Idea.new
  end
end
