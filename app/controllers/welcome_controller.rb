require 'net/http'
require 'json'

class WelcomeController < ApplicationController

	def index
		url = URI.parse(ENV["GREETING_SERVICE_URI"])
		req = Net::HTTP::Get.new(url.path)
		res = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(req)
		}
		hash = JSON.parse(res.body)
		@body = hash["greeting"]
	end

end
