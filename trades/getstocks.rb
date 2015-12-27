require 'httparty'

response = HTTParty.get("https://api.stockfighter.io/ob/api/venues/OGEX/stocks")
json = response.parsed_response

puts json[:ok]
puts json[:symbols]
