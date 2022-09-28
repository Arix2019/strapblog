class ArticlesController < ApplicationController
  # antes da execução da 'action' / (only) -> onde sera executado / (except) -> onde n será exutado
  # before_action :authenticate_user!, except: %i[index show]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @highlights = Article.desc_order.first(3)

    current_page = (params[:page] || 1).to_i
    highlight_id = @highlights.pluck(:id).join(',')

    @articles = Article.without_highlights(highlight_id)
                       .desc_order
                       .page(current_page)
  end

  def show
  end

# criar um post
  def new
    @article = current_user.articles.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to @article, notice: "Article was successfully created."
    else
      render :new
    end
  end

# editar post
  def edit
  end

  def update
      if @article.update(article_params)
      redirect_to @article, notice: "Article was successfully updated."
    else
      render :edit
    end
  end


# deletar post
  def destroy
    @article.destroy

    redirect_to root_path, notice: "Article was successfully destroyed."
  end



  private

  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end

  def set_article
    @article = Article.find(params[:id])
    # instrução pundit ()
    authorize @article
  end

end
