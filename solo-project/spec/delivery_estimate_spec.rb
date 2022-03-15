require 'twilio-ruby'

# put your own credentials here
account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
api_key_sid = 'zzzzzzzzzzzzzzzzzzzzzz'
api_key_secret = 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'

# set up a client to talk to the Twilio REST API using an API Key
@client = Twilio::REST::Client.new api_key_sid, api_key_secret, account_sid