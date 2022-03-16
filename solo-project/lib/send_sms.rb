require 'rubygems'
require 'twilio-ruby'

class EstimatedDelivery
  def initialize(requester)
    @requester = requester
  end

  def create_client(account_sid, auth_token)   
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = @requester.new(account_sid, auth_token)
    return @client
  end

  def delivery_message
    message = @client.messages.create(:body => "Thank you! Your order was placed and will be delivered before #{time1hr.strftime("%I:%M%p")}.",
    :to => "17627752693",  
    :from => "+447460305196")

    puts message.sid
   end

  def send_text
    time = Time.new
    time1hr = time + 3600
    puts "Thank you! Your order was placed and will be delivered before #{time1hr.strftime("%I:%M%p")}."
    create_client
    delivery_message
  end
end
