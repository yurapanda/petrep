class Invoices::CommentsController < CommentsController
    before_action :set_commentable

	private

	def set_commentable
	  @commentable = Invoice.find(params[:invoice_id])
	end
end