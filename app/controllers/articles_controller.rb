class ArticlesController < ApplicationController
  http_basic_authenticate_with name: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', only: :dashboard

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
