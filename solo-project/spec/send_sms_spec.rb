require 'send_sms'

RSpec.describe EstimatedDelivery do
  it 'sends a delivery estimate confirmation text' do
    requester_dbl = double :requester
    fake_message = double(:fake_message)
    expect(fake_message).to receive(:create).with(body: 'Thank you! Your order was placed and will be delivered before 18:52', from: '+17627752693',
      to: '+447460305196').and_return('Thank you! Your order was placed and will be delivered before 18:52')
    account_sid = 'account_sid'
    auth_token = 'auth_token'
    expect(requester_dbl).to receive(:new).with(account_sid, auth_token).and_return('TWILIO_ACCOUNT_SID', 'TWILIO_AUTH_TOKEN')

    order_delivery_estimate = EstimatedDelivery.new(requester_dbl)
    order_delivery_estimate.create_client(account_sid, auth_token)
    fake_message.create
    estimate = order_delivery_estimate.delivery_message
    expect(estimate.send_text).to eq 'Thank you! Your order was placed and will be delivered before #{time1hr.strftime("%I:%M%p")}'
  end
end

# double for the @client.messages.create method. Create needs receive


xdescribe 'Text Messages' do 

  let (:text) { TextMessage.new }
  let (:no_actual_text) { double :test, :send_text => true}

  it 'a double does not actually text for testing purposes' do
    expect(no_actual_text.send_text).to be true
  end

end