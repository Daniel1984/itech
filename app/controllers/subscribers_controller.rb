class SubscribersController < ApplicationController
  
  def create
    @email = params[:email]
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      UserMailer.subscribtion_confirmation(@email).deliver
      UserMailer.admin_subscribtion_confirmation(@email).deliver
      render json: @subscriber, status: :ok
    else
      render json: @subscriber.errors, status: 422
    end
  end
    
end