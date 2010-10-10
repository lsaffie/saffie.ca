class CommentsController < ApplicationController
  #before_filter :login_required
  
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    comment = Comment.new(params[:comment])
    if @post.comments << comment
      redirect_to @post
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    respond_to do |format|
      format.js do
        render :update do |page|
          2.times {page.remove "comment_#{comment.id}"}
        end
      end
    end
  end

end
