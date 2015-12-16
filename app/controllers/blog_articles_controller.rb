class BlogArticlesController < ApplicationController
  before_action :set_blog_article, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:create, :destroy]

  # GET /blog_articles
  # GET /blog_articles.json
  def index
    if not signed_in?
      redirect_back_or signin_path
    end
    @blog_articles = BlogArticle.all
  end

  # GET /blog_articles/1
  # GET /blog_articles/1.json
  def show
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # GET /blog_articles/new
  def new
    if not signed_in?
      redirect_back_or signin_path
    end
    @blog_article = BlogArticle.new
  end

  # GET /blog_articles/1/edit
  def edit
    if not signed_in?
      redirect_back_or signin_path
    end
  end

  # POST /blog_articles
  # POST /blog_articles.json
  def create
    if not signed_in?
      redirect_back_or signin_path
    end
    @blog_article = BlogArticle.new(blog_article_params)

    respond_to do |format|
      if @blog_article.save
        format.html { redirect_to @blog_article, notice: 'Статья успешно создана!' }
        format.json { render :show, status: :created, location: @blog_article }
      else
        format.html { render :new }
        format.json { render json: @blog_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_articles/1
  # PATCH/PUT /blog_articles/1.json
  def update
    if not signed_in?
      redirect_back_or signin_path
    end
    respond_to do |format|
      if @blog_article.update(blog_article_params)
        format.html { redirect_to @blog_article, notice: 'Статья блога успешно обновлена!' }
        format.json { render :show, status: :ok, location: @blog_article }
      else
        format.html { render :edit }
        format.json { render json: @blog_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_articles/1
  # DELETE /blog_articles/1.json
  def destroy
    if not signed_in?
      redirect_back_or signin_path
    end
    @blog_article.destroy
    respond_to do |format|
      format.html { redirect_to blog_articles_url, notice: 'Успешно удалено!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_article
      @blog_article = BlogArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_article_params
      params.require(:blog_article).permit(:Title, :Body)
    end
end
