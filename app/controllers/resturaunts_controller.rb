class ResturauntsController < ApplicationController
  before_action :set_resturaunt, only: [:show, :edit, :update, :destroy]

  # GET /resturaunts
  # GET /resturaunts.json
  def index
    @resturaunts = Resturaunt.all
  end

  # GET /resturaunts/1
  # GET /resturaunts/1.json
  def show
  end

  # GET /resturaunts/new
  def new
    @resturaunt = Resturaunt.new
  end

  # GET /resturaunts/1/edit
  def edit
  end

  # POST /resturaunts
  # POST /resturaunts.json
  def create
    @resturaunt = Resturaunt.new(resturaunt_params)

    respond_to do |format|
      if @resturaunt.save
        format.html { redirect_to @resturaunt, notice: 'Resturaunt was successfully created.' }
        format.json { render :show, status: :created, location: @resturaunt }
      else
        format.html { render :new }
        format.json { render json: @resturaunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resturaunts/1
  # PATCH/PUT /resturaunts/1.json
  def update
    respond_to do |format|
      if @resturaunt.update(resturaunt_params)
        format.html { redirect_to @resturaunt, notice: 'Resturaunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @resturaunt }
      else
        format.html { render :edit }
        format.json { render json: @resturaunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resturaunts/1
  # DELETE /resturaunts/1.json
  def destroy
    @resturaunt.destroy
    respond_to do |format|
      format.html { redirect_to resturaunts_url, notice: 'Resturaunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resturaunt
      @resturaunt = Resturaunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resturaunt_params
      params.require(:resturaunt).permit(:name, :address, :phone, :website)
    end
end
