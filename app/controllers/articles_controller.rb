class ArticlesController < ApplicationController
  def create
	@article = Article.new
	@article.title = params[:article][:title]
	@article.author = params[:article][:author]
	@article.published_at = DateTime.now
	@article.content = params[:article][:content]
	@article.banner = params[:article][:banner]
	@article.save!
	redirect_to :action => :index
  end

  def new
	@article = Article.new
	@article.published_at = DateTime.now
  end

  def index
	@articles = Article.all
  end

  def destroy
	@article = Article.find(params[:id])
	@article.destroy
	redirect_to :action => :index
  end

  def edit
	@article = Article.find(params[:id])
  end

	def update
		@article = Article.find(params[:id])
	@article.title = params[:article][:title]
	@article.author = params[:article][:author]
	@article.published_at = DateTime.now
	@article.content = params[:article][:content]
	@article.banner = params[:article][:banner]
	@article.save!
	redirect_to :action => :index
	end

  def show
	@article = Article.find(params[:id])
  end
end
