class AdminarticleController < ApplicationController
  def index
    @articles =Article.all
  end

  def new
    @article=Article.new
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def create
    binding.pry
    @article=Article.new(article_params)
    @article.save
    redirect_to("/admin/articles")

  end

  def edit
    @article =Article.find_by(id:params[:id])
  end

  def update
    @article= Article.find_by(id:params[:id])
    #render json: params
#
#    @article.title = params[:article][:title]
#    @article.category = params[:category]
#    @article.content = params[:content]
    @article.update(article_params)#params[:article])
#    @article.save
    redirect_to("/admin/articles")
  end

  def destroy
    @article = Article.find_by(id:params[:id])
    @article.destroy
    redirect_to("/admin/articles")

  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :category,
      :content
    )
  end

end
