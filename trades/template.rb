require 'rubygems'
require 'httparty'
require 'json'

apikey = "c0f5890452212296d443d566491f97c5e7743ee3"
venue = "GKUEX"
stock = "FOO"
base_url = "https://api.stockfighter.io/ob/api"

account = "DTB81988318"

# Set up the order

# order = {
#   "account" => account,
#   "venue" => venue,
#   "symbol" => stock,
#   "price" => 0,
#   "qty" => 0,
#   "direction" => "buy",
#   "orderType" => "limit"
# }

# POST
response = HTTParty.post("#{base_url}/venues/#{venue}/stocks/#{stock}/",
                         :body => JSON.dump(order),
                         :headers => {"X-Starfighter-Authorization" => apikey}
)
puts response.body

# GET
response = HTTParty.get("#{base_url}/venues/#{venue}/")
puts response.body
