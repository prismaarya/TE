require 'rubygems'
require 'httparty'

class StackExchange
	include httparty
	base_uri 'api.stackexchage.com'

	def initialize(service, page)
		@options = { query {site: service}}
	end

def questions
	self.class.get('/2.2/questions', @options)
end
end