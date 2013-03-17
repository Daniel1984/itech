class SubscribersController < ApplicationController
  
  def create
    @email = params[:email]
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      SubscriberMailer.subscribtion_confirmation(@email).deliver
      render json: @subscriber, status: :ok
    else
      render json: @subscriber.errors, status: 422
    end
  end
    
end