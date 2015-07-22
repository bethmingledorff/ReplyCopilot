class ResponsesController < ApplicationController

	def index
		@responses = Response.order(:id)
	end

	def show
		@response = Response.find(params[:id])
	end

end
