class SubskillsetsController < ApplicationController
  before_action :set_subskillset, only: [:show, :edit, :update, :destroy]

  # GET /subskillsets
  # GET /subskillsets.json
  def index
    @subskillsets = Subskillset.all
  end

  # GET /subskillsets/1
  # GET /subskillsets/1.json
  def show
  end

  # GET /subskillsets/new
  def new
    @subskillset = Subskillset.new
  end

  # GET /subskillsets/1/edit
  def edit
  end

  # POST /subskillsets
  # POST /subskillsets.json
  def create
    @subskillset = Subskillset.new(subskillset_params)

    respond_to do |format|
      if @subskillset.save
        format.html { redirect_to @subskillset, notice: 'Subskillset was successfully created.' }
        format.json { render :show, status: :created, location: @subskillset }
      else
        format.html { render :new }
        format.json { render json: @subskillset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subskillsets/1
  # PATCH/PUT /subskillsets/1.json
  def update
    respond_to do |format|
      if @subskillset.update(subskillset_params)
        format.html { redirect_to @subskillset, notice: 'Subskillset was successfully updated.' }
        format.json { render :show, status: :ok, location: @subskillset }
      else
        format.html { render :edit }
        format.json { render json: @subskillset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subskillsets/1
  # DELETE /subskillsets/1.json
  def destroy
    @subskillset.destroy
    respond_to do |format|
      format.html { redirect_to subskillsets_url, notice: 'Subskillset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subskillset
      @subskillset = Subskillset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subskillset_params
      params.require(:subskillset).permit(:name)
    end
end
