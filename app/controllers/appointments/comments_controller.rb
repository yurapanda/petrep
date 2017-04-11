class Appointments::CommentsController < CommentsController
    before_action :set_commentable

	private

	def set_commentable
	  @commentable = Appointment.find(params[:appointment_id])
	end
end