class CheckinController < ApplicationController
  def index
  	@currentTime = Time.now
  end
end
