class ArticlesController < ApplicationController
  # antes da execução da 'action' / (only) -> onde sera executado / (except) -> onde n será exutado
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show 
  end

# criar um post
  def new 
    @article = Article.new
  end

  def create 
    @article = Article.new(article_params)

    if @article.save 
      redirect_to @article
    else
      render :new
    end
  end

# editar post
  def edit 
  end
  
  def update 
      if @article.update(article_params) 
      redirect_to @article
    else
      render :edit
    end
  end


# deletar post
  def destroy 
    @article.destroy

    redirect_to root_path
  end



  private

  def article_params 
    params.require(:article).permit(:title, :body)
  end

  def set_article 
    @article = Article.find(params[:id])    
  end

end
