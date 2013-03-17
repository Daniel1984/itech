class MainController < ApplicationController
  
  def index
    puts "IP ADDRESS --------------------------------------------->>>> #{request.ip}"
    puts "COUNTRY CODE --------------------------------------------->>>> #{request.location.country_code}"
    puts "COUNTRY --------------------------------------------->>>> #{request.location.country}"
  end
  
end