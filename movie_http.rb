require "http"

system "clear"

response = HTTP.get("http://localhost:3000/first_movie")

puts response