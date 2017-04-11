class Tests::CommentsController < CommentsController
    before_action :set_commentable

	private

	def set_commentable
	  @commentable = Test.find(params[:test_id])
	end
end