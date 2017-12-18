class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(article_params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			redirect_to :action => "index"
		else
			render "new"
		end
	end

	def edit
	end

	def destoy
	end

	private
	  def article_params
	    params.require(:article).permit(:title, :content, :id, {images: []})
	  end
end
