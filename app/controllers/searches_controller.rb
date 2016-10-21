class SearchesController < ApplicationController

	def new
		@search = Search.new
		@category = Category.uniq.pluck(:name)
		@subcategory= Type.uniq.pluck(:name)
		@marca = Marca.uniq.pluck(:name)
		
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
		
	end

	def show
		@search=Search.find(params[:id])
		
	end

	private
	def search_params
		params.require(:search).permit(:keyword, :category, :subcategory, :marca)
		
	end

end
