class CommentsController < ApplicationController

	#action to create a new comment
	def create
  		@product = Product.find(params[:product_id])
  		@comment = @product.comments.new(comment_params)
  		@comment.user = current_user
  		@comment.save
  		redirect_to product_path(@product)
	end

	#action to delete an existing comment
	def destroy
	end

	#private actions
	private

	#action that allows users to update comment and rating attributes
  	def comment_params
    	params.require(:comment).permit(:user_id, :body, :rating)
  	end
end


