class EveentsController < ApplicationController
  before_action :set_eveent, only: [:show, :edit, :update, :destroy]

  # GET /eveents
  # GET /eveents.json
  def index
    @eveents = Eveent.all
  end

  # GET /eveents/1
  # GET /eveents/1.json
  def show
  end

  # GET /eveents/new
  def new
    @eveent = Eveent.new
  end

  # GET /eveents/1/edit
  def edit
  end

  # POST /eveents
  # POST /eveents.json
  def create
    @eveent = Eveent.new(eveent_params)

    respond_to do |format|
      if @eveent.save
        format.html { redirect_to @eveent, notice: 'Eveent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eveent }
      else
        format.html { render action: 'new' }
        format.json { render json: @eveent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eveents/1
  # PATCH/PUT /eveents/1.json
  def update
    respond_to do |format|
      if @eveent.update(eveent_params)
        format.html { redirect_to @eveent, notice: 'Eveent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eveent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eveents/1
  # DELETE /eveents/1.json
  def destroy
    @eveent.destroy
    respond_to do |format|
      format.html { redirect_to eveents_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eveent
      @eveent = Eveent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eveent_params
      params.require(:eveent).permit(:Date, :title, :description)
    end
end
