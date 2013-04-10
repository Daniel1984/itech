class Message < ActiveRecord::Base
  attr_accessible :body, :company, :email, :name, :phone

  validates_presence_of :name, :message => 'Please enter your name!'
  validates_presence_of :body, :message => 'Do not leave this field empty!'
  validates_length_of 	:name, :maximum => 20
  validates_length_of 	:company, :maximum => 50
  validates_length_of 	:email, :maximum => 80
  validates_length_of 	:body, :maximum => 500

  validates :email,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please enter valid email!" }
	validates :phone,
            :allow_blank => true,
            :format => { :with => /^[0-9\-\+]{7,15}$/, :message => "Your telephone number must be between 7 and 15 characters long and cannot contain any letters, spaces or special characters" }
end
