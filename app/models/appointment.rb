class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appt
    year = appointment_datetime.year
    day = appointment_datetime.day
    month_name
    get_time
    "#{month_name} #{day}, #{year} at #{get_time}"
  end

  def month_name
    months = %w[January February March April May June July August September October Novemeber December]
    element = appointment_datetime.month - 1
    months[element]
  end

  def get_time
    appointment_datetime.to_formatted_s(:time)
  end
end
