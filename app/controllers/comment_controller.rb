class CommentController < ApplicationController
  def new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comment.create(params[:comment].permit(:content))
    redirect_to post_path
  end
end
