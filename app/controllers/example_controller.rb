class ExampleController < ApplicationController

  def new
    @objective = Objective.new
  end

  def index
    @objectives = Objective.all
  end

  def create
    @objective = Objective.new(params[:objective].permit(:name, :observations))

    PabloMailer.error_mail(@objective).deliver if @objective.save

    redirect_to example_path
  end

end
