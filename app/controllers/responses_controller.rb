class ResponsesController < ApplicationController
	def index
		@responses = Response.order(:id)
	end

	def show
		@response = Response.find(params[:id])
	end

	def create
		puts "============"
		puts "CREATING RESPONSE:"
		puts params
		puts "============"

		render nothing: true
	end
end
