class ExampleController < ApplicationController

  def new
    @objective = Objective.new
  end

  def index
    @objectives = Objective.all
  end

  def create
    @objective = Objective.new(params[:objective].permit(:name, :observations, :victim))
    if @objective.save
      PabloMailer.error_mail(@objective).deliver if @objective.save && !@objective.victim.nil?
      redirect_to example_path
    else
      render action: 'new'
    end
  end

end
