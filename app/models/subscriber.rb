class Subscriber < ActiveRecord::Base
  attr_accessible :email

  validates :email,    
            :uniqueness => { :message => "This email is subscribed!" },
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please enter valid email!" }
  
end
