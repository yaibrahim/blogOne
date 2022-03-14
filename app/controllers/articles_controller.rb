class ArticlesController < ApplicationController

  before_action :find_post, only: [:show]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(posts_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
  end

  private

  def posts_params
    params.require(:article).permit(:title, :body)
  end

  def find_post
    @article = Article.find(params[:id])
  end
end
