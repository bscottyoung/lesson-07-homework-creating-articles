class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to articles_path
  end

  def edit
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end



  private

  def article_params
    params.require(:article).permit(:author_first_name, :author_last_name, :article_year, :title, :body, :pub_name, :article_pg)
  end  

end
