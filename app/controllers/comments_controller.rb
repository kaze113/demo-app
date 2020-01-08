class CommentsController < ApplicationController
	def create
		@entry = Entry.find(params[:entry_id])
		@comment = @entry.comments.create(comment_params)
		redirect_to entry_path(@entry)
	end

	private
		def comment_params
			params.require(:comment).permit(:user_id, :body)
		end

end
