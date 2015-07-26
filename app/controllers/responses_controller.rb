class ResponsesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

	def index
		@responses = Response.order(:id)
	end

	def show
		@response = Response.find(params[:id])
	end

end
