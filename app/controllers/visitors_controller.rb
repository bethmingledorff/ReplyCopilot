class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    # byebug
    if @visitor.valid?
      @visitor.subscribe
            flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
      flash[:notice] = "Signed up #{@visitor.email}."

    else
      flash[:notice] = "Failed to sign up."
      render :new
    end
  end


  private

  def secure_params
    params.require(:visitor).permit(:email)
  end

end
