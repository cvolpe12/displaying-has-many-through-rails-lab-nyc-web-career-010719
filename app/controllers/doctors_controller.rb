class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    find_doc
  end

  # def new
  #
  # end
  #
  # def create
  #
  # end

  # def edit
  #   find_doc
  # end
  #
  # def update
  #   find_doc
  # end
  #
  # def destroy
  #
  # end

  private

  def find_doc
    @doctor = Doctor.find(params[:id])
  end

end
