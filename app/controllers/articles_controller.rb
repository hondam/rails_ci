class ArticlesController < ApplicationController

  # 一覧画面
  # GET /articles
  def index
    @articles = Article.all
  end

  # 新規追加画面
  # GET /articles/new
  def new
    @article = Article.new
  end

  # 新規追加実行
  # POST /articles
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # 詳細画面
  # GET /articles/:id(.:format)
  def show
    @article = Article.find(params[:id])
  end

  # 編集画面
  # GET /articles/:id/edit(.:format)
  def edit
    @article = Article.find(params[:id])
  end

  # 編集実行
  # PUT /articles/:id(.:format)
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  # 削除実行
  # DELETE /articles/:id(.:format)
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
    def article_params
      # Strong Parameters
      params.require(:article).permit(:title, :text)
    end
end
