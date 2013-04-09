class MessagesController < ApplicationController

	def create
		@email = params[:email]
		@phone = params[:phone]
		@name = params[:name]
		@company = params[:company]
		@message = Message.new(params[:message])
		if @message.save
			render json: @message, status: :ok
		else
			render json: @message.errors, status: 422
		end
	end

end