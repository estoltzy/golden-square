require 'twilio-ruby'

account_sid = "ACb9ad71143b320f5ff56f88bd4023b7bd" # Your Test Account SID from www.twilio.com/console/settings
auth_token = "87ac0faa3b562b1391937777afcbaa33"   # Your Test Auth Token from www.twilio.com/console/settings

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "Hello from Ruby",
    to: "+17627752693",    # Replace with your phone number
    from: "+15005550006")  # Use this Magic Number for creating SMS

puts message.sid

# # put your own credentials here
# account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
# api_key_sid = 'zzzzzzzzzzzzzzzzzzzzzz'
# api_key_secret = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

# # set up a client to talk to the Twilio REST API using an API Key
# @client = Twilio::REST::Client.new api_key_sid, api_key_secret, account_sid