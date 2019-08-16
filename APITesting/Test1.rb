require 'rubygems'
require 'httparty'

 class EdutechionalResty
   include HTTParty
   base_uri "http://edutechional-resty.herokuapp.com"

   def posts
     self.class.get('/posts.json')
   end
 end

 api = EdutechionalResty.new
 puts api.posts

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

puts response.body
puts response.status
puts response.status
