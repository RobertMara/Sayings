class SayingsController < ApplicationController
  before_action :set_saying, only: [:show, :edit, :update, :destroy]
  before_action :set_sayer, only: [:show, :edit]
  # Need :create on set_all_sayers in case there is an error.
  before_action :set_all_sayers, only: [:new, :create, :edit]

  # GET /sayings
  # GET /sayings.json
  def index
    @sayings = Saying.all
  end

  # GET /sayings/1
  # GET /sayings/1.json
  def show
  end

  # GET /sayings/new
  def new
    @saying = Saying.new
  end

  # GET /sayings/1/edit
  def edit
  end

  # POST /sayings
  # POST /sayings.json
  def create
    @saying = Saying.new(saying_params)

    respond_to do |format|
      if @saying.save
        format.html { redirect_to @saying, notice: 'Saying was successfully created.' }
        format.json { render :show, status: :created, location: @saying }
      else
        format.html { render :new }
        format.json { render json: @saying.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sayings/1
  # PATCH/PUT /sayings/1.json
  def update
    respond_to do |format|
      if @saying.update(saying_params)
        format.html { redirect_to @saying, notice: 'Saying was successfully updated.' }
        format.json { render :show, status: :ok, location: @saying }
      else
        format.html { render :edit }
        format.json { render json: @saying.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sayings/1
  # DELETE /sayings/1.json
  def destroy
    @saying.destroy
    respond_to do |format|
      format.html { redirect_to sayings_url, notice: 'Saying was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saying
      @saying = Saying.find(params[:id])
    end

    # Sayer already associated with Saying.
    def set_sayer
      #@sayer = Sayer.find(params[:sayer_id]) #Fails on show after creating a new Saying.
      @sayer = @saying.sayer
    end

    # All Sayers; for selection by user.
    def set_all_sayers
      @all_sayers = Sayer.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saying_params
      params.require(:saying).permit(:body, :sayer_id)
    end
end
