class UserMailer < ActionMailer::Base
  default from: "info@itech.io"

  def subscribtion_confirmation(email)
    mail to: email, subject: "iTech Subscription Confirmation"
  end

  def admin_subscribtion_confirmation(email)
  	@email = email
    mail to: ADMIN_CTO, bcc: ADMIN_EMAIL_ADDRESSES, subject: "iTech Subscription Confirmation"
  end

  def submit_confirmation(message)
  	@message = message
    mail to: message.email, subject: "iTech - message submitted"
  end

  def admin_submit_confirmation(message)
  	@message = message
	  	mail to: ADMIN_CTO, bcc: ADMIN_EMAIL_ADDRESSES, subject: "iTech - message submitted"
  end

end
