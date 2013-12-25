class PostsController < ApplicationController
  def index
    @t = Article.search(params[:q])
    @article = @t.result(distinct: true)
  end
  def show
    @article = Article.find(params[:id])
  end
end
