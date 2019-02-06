class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    find_patient
  end

  # def new
  #
  # end
  #
  # def create
  #
  # end

  # def edit
  #   find_patient
  # end
  #
  # def update
  #   find_patient
  # end
  #
  # def destroy
  #
  # end

  private

  def find_patient
    @patient = Patient.find(params[:id])
  end

end
