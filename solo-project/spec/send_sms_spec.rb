require 'send_sms'

RSpec.describe EstimatedDelivery do
  it 'sends a delivery message' do
    requester_dbl = double :requester
    client_double = double(:client_double)
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    expect(requester_dbl).to receive(:new).with(account_sid, auth_token).and_return(client_double)
    # fake_message = double(:fake_message)
    create_double = double(:create_double)
    sid_double = double(:sid_double)
    expect(client_double).to receive(:messages).and_return(create_double)
    expect(create_double).to receive(:create).with(body: "Thank you! Your order was placed and will be delivered before #{@time1hr}.", from: '+17627752693',
      to: '+447460305196').and_return(sid_double)
    expect(sid_double).to receive(:sid).and_return(" ")

    new_client = EstimatedDelivery.new(requester_dbl)
    expect(new_client.delivery_message(account_sid, auth_token)).to eq " "
  end
end