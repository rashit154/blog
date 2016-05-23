class ArticlesController < ApplicationController
	def new
	end

	def created
	  render plain: params[:article].inspect
	end
end
