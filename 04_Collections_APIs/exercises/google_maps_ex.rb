require "rest-client"
require "json"
require "cgi"

def question(q)
  puts q
  CGI.escape(gets.chomp)
end

origin = question("Where are you starting?")
destination = question("Where are you going?")
query = "origin=#{origin}&destination=#{destination}&sensor=false"
url = "http://maps.googleapis.com/maps/api/directions/json?#{query}"

response = RestClient.get(url)
directions = JSON.load(response)
route = directions["routes"][0]
leg = route["legs"][0]

leg["steps"].each do |step|
  puts step["html_instructions"].gsub(/<\/?[^>]*>/,"")
end
