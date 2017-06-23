class PointsController < ApplicationController
  before_action :set_point, only: [:show, :edit, :update, :destroy]

  # GET /points
  # GET /points.json
  def index
    quest = Quest.find params[:quest_id]
    @points = quest.points
  end

  # GET /points/1
  # GET /points/1.json
  def show
    quest = Quest.find params[:quest_id]
    @point = quest.points.find params[:id]
  end

  # GET /points/new
  def new
    quest = Quest.find params[:quest_id]
    @point = quest.points.new
  end

  # GET /points/1/edit
  def edit
    quest = Quest.find params[:quest_id]
    @point = quest.points.find params[:id]
  end

  # POST /points
  # POST /points.json
  def create
    quest = Quest.find params[:quest_id]

    @point = quest.points.new point_params

    respond_to do |format|
      if @point.save
        format.html { redirect_to url_for(controller: :points, action: :index) }
        format.json { render :show, status: :created, location: @point}
      else
        format.html { render :new}
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points/1
  # PATCH/PUT /points/1.json
  def update
    respond_to do |format|
      if @point.update(point_params)
        format.html {redirect_to @point, notice: 'Point was successfully updated.'}
        format.json {render :show, status: :ok, location: @point}
      else
        format.html {render :edit}
        format.json {render json: @point.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /points/1
  # DELETE /points/1.json
  def destroy
    @point.destroy
    respond_to do |format|
      format.html {redirect_to points_url, notice: 'Point was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_point
    @point = Point.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def point_params
    params.require(:point).permit(:name, :category, :completed)
  end
end
