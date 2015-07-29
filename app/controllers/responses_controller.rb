class ResponsesController < ApplicationController
	def index
		@responses = Response.order(:id)
	end

	def show
		# TODO.
	end

	def create
		response_quality = params['response']['response_quality']

		@response = Response.find_by_name(response_quality)
		@customer = params['customer_name']
		@email 	  = params['email']
		@username = params['username']

		render template: 	'responses/show.html.erb'  # missing id
	end
end
