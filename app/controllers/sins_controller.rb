class SinsController < ApplicationController
  before_action :set_sin, only: [:show, :edit, :update, :destroy]
  protect_from_forgery :except => [:update, :destroy, :create]

  # GET /sins
  # GET /sins.json
  def index
    @sins = Sin.all
  end

  # GET /sins/1
  # GET /sins/1.json
  def show
  end

  # GET /sins/new
  def new
    @sin = Sin.new
  end

  # GET /sins/1/edit
  def edit
  end

  # POST /sins
  # POST /sins.json
  def create
    @sin = Sin.new(sin_params)

    respond_to do |format|
      if @sin.save
        format.html { redirect_to @sin, notice: 'Sin was successfully created.' }
        format.json { render :show, status: :created, location: @sin }
      else
        format.html { render :new }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sins/1
  # PATCH/PUT /sins/1.json
  def update
    respond_to do |format|
      if @sin.update(sin_params)
        format.html { redirect_to @sin, notice: 'Sin was successfully updated.' }
        format.json { render :show, status: :ok, location: @sin }
      else
        format.html { render :edit }
        format.json { render json: @sin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sins/1
  # DELETE /sins/1.json
  def destroy
    @sin.destroy
    respond_to do |format|
      format.html { redirect_to sins_url, notice: 'Sin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sin
      @sin = Sin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sin_params
      params.require(:sin).permit(:name, :reason)
    end
end
