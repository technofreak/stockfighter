require 'httparty'

response = HTTParty.get("https://api.stockfighter.io/ob/api/venues/TESTEX/heartbeat")
ok = response.parsed_response["ok"] rescue false

raise "Oh no the world is on fire!" unless ok
