class PdrsController < ApplicationController
  before_action :set_pdr, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[]
 # before_action :correct_user [:edit, :update]
  # GET /pdrs or /pdrs.json
  def index
   @pdrs = Pdr.all
   @count = 1
  end

  # GET /pdrs/1 or /pdrs/1.json
  def show
  end

  # GET /pdrs/new
  def new
    #@pdr = Pdr.new
    @pdr = current_user.pdrs.build()
  end

  # GET /pdrs/1/edit
  def edit
    
  end
  # POST /pdrs or /pdrs.json
  def create
   # @pdr = Pdr.new(pdr_params)
   @pdr = current_user.pdrs.build(pdr_params)
    respond_to do |format|
      if @pdr.save
        format.html { redirect_to pdr_url(@pdr), notice: "Pdr was successfully created." }
        format.json { render :show, status: :created, location: @pdr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pdr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdrs/1 or /pdrs/1.json
  def update
    @pdr = Pdr.find(params[:id])
    current_version = @pdr.version || 0
    cur_user = current_user.id
    if current_user.adminn?
      @pdr.assign_attributes(pdr_params.slice(:my_zone, :answer, :mark, :version))
      current_user_id = cur_user
    else
      @pdr = current_user.pdrs.build(pdr_params)
      @pdr.version = current_version + 1
    end
    if @pdr.save
      redirect_to pdrs_path(@pdr)
    else
      render 'edit'
    end
  end


  # DELETE /pdrs/1 or /pdrs/1.json
  def destroy
    @pdr.destroy

    respond_to do |format|
      format.html { redirect_to pdrs_url, notice: "Надсилання скасовано" }
      format.json { head :no_content }
    end
  end

  def correct_user
    @pdr = Pdr.find(params[:id])
    return if current_user.adminn? || @pdr.user == current_user
   # @pdr == current_user.pdr.find_by(id:params[:id])
   redirect_to pdrs_path #if @pdr.nill?
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdr
      @pdr = Pdr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pdr_params
      params.require(:pdr).permit(:my_zone, :answer, :user_id, :mark, :version)
    end
end
