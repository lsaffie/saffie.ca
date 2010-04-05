class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      redirect_to tags_path
    else
      flash[:error] = "Couldn't create tag"
    end
  end

end
