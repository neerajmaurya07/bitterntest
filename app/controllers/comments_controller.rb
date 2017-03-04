class CommentsController < ApplicationController
	def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(params_comment)
    redirect_to blogs_path(@blog)
  end
  private
  def params_comment
      params.require(:comment).permit(:body, :user_id, :blog_id)
  end
end
