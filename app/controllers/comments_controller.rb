class CommentsController < ApplicationController
  def create
    @post = Article.find(params[:article_id])
    @comment = @post.comments.create!(comments_params)
    redirect_to posts_path, :notice=>"Yorumunuz Eklendi"
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def comments_params
    params.require(:comment).permit(:article, :name, :email ,:body)
  end
end
