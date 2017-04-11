class BoardingBookings::CommentsController < CommentsController
    before_action :set_commentable

	private

	def set_commentable
	  @commentable = BoardingBooking.find(params[:boarding_booking_id])
	end
end