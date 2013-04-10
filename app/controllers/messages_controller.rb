class MessagesController < ApplicationController

	def create
		@email = params[:email]
		@phone = params[:phone]
		@name = params[:name]
		@company = params[:company]
		@message = Message.new(params[:message])
		if @message.save
			UserMailer.submit_confirmation(@message).deliver
			UserMailer.admin_submit_confirmation(@message).deliver
			render json: @message, status: :ok
		else
			render json: @message.errors, status: 422
		end
	end

end