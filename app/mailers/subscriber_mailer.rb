class SubscriberMailer < ActionMailer::Base
  default from: "info@itech.io"
  
  def subscribtion_confirmation(email)
    mail to: email, subject: "iTech Subscription Confirmation"
  end
end
