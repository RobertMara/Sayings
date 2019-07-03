class SayersController < ApplicationController
  before_action :set_sayer, only: [:show, :edit, :update, :destroy]

  # GET /sayers
  # GET /sayers.json
  def index
    @sayers = Sayer.all
  end

  # GET /sayers/1
  # GET /sayers/1.json
  def show
  end

  # GET /sayers/new
  def new
    @sayer = Sayer.new
  end

  # GET /sayers/1/edit
  def edit
  end

  # POST /sayers
  # POST /sayers.json
  def create
    @sayer = Sayer.new(sayer_params)

    respond_to do |format|
      if @sayer.save
        format.html { redirect_to @sayer, notice: 'Sayer was successfully created.' }
        format.json { render :show, status: :created, location: @sayer }
      else
        format.html { render :new }
        format.json { render json: @sayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sayers/1
  # PATCH/PUT /sayers/1.json
  def update
    respond_to do |format|
      if @sayer.update(sayer_params)
        format.html { redirect_to @sayer, notice: 'Sayer was successfully updated.' }
        format.json { render :show, status: :ok, location: @sayer }
      else
        format.html { render :edit }
        format.json { render json: @sayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sayers/1
  # DELETE /sayers/1.json
  def destroy
    @sayer.destroy
    respond_to do |format|
      format.html { redirect_to sayers_url, notice: 'Sayer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sayer
      @sayer = Sayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sayer_params
      params.require(:sayer).permit(:name)
    end
end
