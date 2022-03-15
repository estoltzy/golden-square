require 'api_testing'

RSpec.describe TimeError do
  it 'returns the difference in seconds' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"2.25.179.217","datetime":"2022-03-14T16:41:36.214527+00:00","day_of_week":1,"day_of_year":73,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647276096,"utc_datetime":"2022-03-14T16:41:36.214527+00:00","utc_offset":"+00:00","week_number":11}')
    time = Time.new(2022, 03, 14, 14, 10, 04)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 9092.214527
  end
end