require 'rubygems'
require 'httparty'
require 'json'

apikey = "c0f5890452212296d443d566491f97c5e7743ee3"
venue = "GKUEX"
stock = "OPC"
base_url = "https://api.stockfighter.io/ob/api"

account = "DTB81988318"

# Set up the order

order = {
  "account" => account,
  "venue" => venue,
  "symbol" => stock,
  "price" => 9200,
  "qty" => 100,
  "direction" => "buy",
  "orderType" => "limit"
}

response = HTTParty.post("#{base_url}/venues/#{venue}/stocks/#{stock}/orders",
                         :body => JSON.dump(order),
                         :headers => {"X-Starfighter-Authorization" => apikey}
)

puts response.body


# {
#   "ok": true,
#   "symbol": "OPC",
#   "venue": "GKUEX",
#   "direction": "buy",
#   "originalQty": 100,
#   "qty": 0,
#   "price": 9200,
#   "orderType": "limit",
#   "id": 3808,
#   "account": "DTB81988318",
#   "ts": "2015-12-27T13:27:20.789485233Z",
#   "fills": [
#     {
#       "price": 8787,
#       "qty": 100,
#       "ts": "2015-12-27T13:27:20.789486834Z"
#     }
#   ],
#   "totalFilled": 100,
#   "open": false
# }
