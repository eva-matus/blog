class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def dashboard
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)  
    @article.save
  end

  private

  def articles_params
    params.require(:article).permit(:title, :image_url, :content)
    
  end

end
