class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comment.create(comment_params)
		redirect_to article_path(@aritcle)
	end

	private
	  def comments_params
	  	params.require(:comment).permit(:comment, :body)
	  end
end


