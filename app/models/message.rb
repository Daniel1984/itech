class Message < ActiveRecord::Base
  attr_accessible :body, :company, :email, :name, :phone

	validates_presence_of :name, :message => 'Enter your name!'
	validates_presence_of :body, :message => 'Do not leave this field empty!'


	validates :email,    
						:uniqueness => { :message => "This email is subscribed!" },
	          :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please enter valid email!" }

end
