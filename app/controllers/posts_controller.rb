class PostsController < ApplicationController

  before_filter :login_required, :except => [:index, :show]

  require 'RedCloth'

  def index
    @posts = Post.find(:all, :order => "created_at DESC")
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments
  end

  def new
    @post = Post.new
    #@tags = Tag.find :all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    @post.tags << Tag.find(params[:tag][:tag_id])
    if @post.save
      redirect_to posts_path
    end
  end

  def update
    post = Post.find(params[:id])
    if post.update_attributes(params[:post])
      redirect_to post_path(post)
    end
  end

  def destroy
    if Post.destroy(params[:id])
      redirect_to posts_path
    end
  end
end
