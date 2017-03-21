class ScheduleController < ApplicationController
  def view
  	term = Term.current_term
  	@week = Date::DAYNAMES.slice(1, 5)
  end
end
