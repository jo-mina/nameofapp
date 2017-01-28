class CommentsController < ApplicationController

	#action to create a new comment
	def create
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


