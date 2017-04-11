class Patients::DoneVaccinationsController < ApplicationController
  #before_action :set_done_vaccination, only: [:show, :edit, :update, :destroy]

  # GET /done_vaccinations
  # GET /done_vaccinations.json
  def index
    @done_vaccinations = DoneVaccination.all
  end

  # GET /done_vaccinations/1
  # GET /done_vaccinations/1.json
  def show
  end

  # GET /done_vaccinations/new
  def new
    @patient = Patient.find(params[:patient_id])
 
    @done_vaccination = DoneVaccination.new
  end

  # GET /done_vaccinations/1/edit
  def edit
  end

  # POST /done_vaccinations
  # POST /done_vaccinations.json
  def create
    @patient = Patient.find(params[:patient_id])
    @done_vaccination = DoneVaccination.new(done_vaccination_params)
    @done_vaccination.patient = @patient
    

    respond_to do |format|
      if @done_vaccination.save
        format.html { redirect_to @patient, notice: 'Done vaccination was successfully created.' }
        format.json { render :show, status: :created, location: @done_vaccination }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /done_vaccinations/1
  # PATCH/PUT /done_vaccinations/1.json
  def update
    respond_to do |format|
      if @done_vaccination.update(done_vaccination_params)
        format.html { redirect_to @done_vaccination, notice: 'Done vaccination was successfully updated.' }
        format.json { render :show, status: :ok, location: @done_vaccination }
      else
        format.html { render :edit }
        format.json { render json: @done_vaccination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /done_vaccinations/1
  # DELETE /done_vaccinations/1.json
  def destroy
    @done_vaccination.destroy
    respond_to do |format|
      format.html { redirect_to done_vaccinations_url, notice: 'Done vaccination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_done_vaccination
      @done_vaccination = DoneVaccination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def done_vaccination_params
      params.require(:done_vaccination).permit(:vaccination_id, :patient_id)
    end
end
