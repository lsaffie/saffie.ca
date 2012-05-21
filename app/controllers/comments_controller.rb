class CommentsController < ApplicationController
  #before_filter :authenticate_user!
  
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    comment_params = params[:comment]
    if comment_params["bot_check"].empty?
      comment = Comment.new(comment_params)
      if @post.comments << comment
        Pony.mail(:to => 'luis.saffie@gmail.com', :from => 'comments@saffie.ca', :subject => 'Comment', :body => "#{comment.body} www.saffie.ca/#{post_comment_path(@post, comment)}")
      end
    end
    redirect_to @post
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    respond_to do |format|
      format.js do
        render :update do |page|
          page.remove "comment_#{comment.id}"
        end
      end
    end
  end

end
