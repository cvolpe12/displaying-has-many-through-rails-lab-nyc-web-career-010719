class AppointmentsController < ApplicationController

  # def index
  #   @appointments = Appointment.all
  # end

  def show
    find_appointment
  end

  # def new
  #
  # end
  #
  # def create
  #
  # end

  # def edit
  #   find_appointment
  # end
  #
  # def update
  #   find_appointment
  # end
  #
  # def destroy
  #
  # end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

end
