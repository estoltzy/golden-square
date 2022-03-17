require 'rubygems'
require 'twilio-ruby'

class EstimatedDelivery
  def initialize(requester)
    @requester = requester
  end

  def delivery_message(account_sid, auth_token)   
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    @client = @requester.new(account_sid, auth_token)

    message = @client.messages.create(:body => "Thank you! Your order was placed and will be delivered before #{@time1hr}.",
    :to => "+447460305196",  
    :from => "+17627752693")
    
    return message.sid
   end

  def time_estimate
    time = Time.new
    @time1hr = time + 3600
  end
end

