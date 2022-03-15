class EstimatedDelivery
  def delivery_estimate
    # outputs confirmation message with estimated delivery time
    end
end

@client.messages.create(
  from: '+14159341234',
  to: '+16105557069',
  body: 'Hey there!'
)
# I would like to receive a text such as: 
# "Thank you! Your order was placed and will be delivered before 18:52" 
# after I have ordered.