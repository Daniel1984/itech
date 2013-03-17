# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Itech::Application.initialize!

# SENDGRID_PASS = 'DSvril4ezv'
# 
# ActionMailer::Base.smtp_settings = {
#   :user_name => "itechio",
#   :password => SENDGRID_PASS,
#   :domain => "itech.io",
#   :address => "smtp.sendgrid.net",
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }