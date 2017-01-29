class CommentsController < ApplicationController

	#action to create a new comment
	def create
  		@product = Product.find(params[:product_id])
  		@comment = @product.comments.new(comment_params)
  		@comment.user = current_user
  		respond_to do |format|
  			if @comment.save
  				format.html {redirect_to @product, notice: 'Review was created sucessfully.'}
  				format.json {render :show, status: :created, location: @product}
  			else
  				format.html {redirect_to @product, alert: 'Review was not saved sucessfully.'}
  				format.json {render json: @comment.errors, status: :unprocessable_entity}
  			end
		end
	end

	#action to delete an existing comment
	def destroy
		@comment = Comment.find(params[:id])
		product = @comment.product
		@comment.destroy
		redirect_to product
	end

	#private actions
	private

	#action that allows users to update comment and rating attributes
  	def comment_params
    	params.require(:comment).permit(:user_id, :body, :rating)
  	end
end


