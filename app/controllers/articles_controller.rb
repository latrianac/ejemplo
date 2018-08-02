class ArticlesController < ApplicationController

	def index
    @articles = Article.all
    end
	def show
    @article = Article.find(params[:id])
    end

	def new
		@article = Article.new(article_params)
	end
	def create
		#se quita esta linea cuando se emplea sqllittle
		#render plain: params[:article].inspect 
		#para delimitar la entrada de datos se cambia esta linea
		#@article = Article.new(params[:article])
		@article = Article.new(params.require(:article).permit(:title, :text))
  		@article.save
  		redirect_to @article
  		if @article.save
    	redirect_to @article
  		else
    	render 'new'
    	end
 
	end
	#esto sirve para que solo sea accesible cuando se requiera y no a gusto del usuario
	private
  		def article_params
    		params.require(:article).permit(:title, :text)
  		end
end
