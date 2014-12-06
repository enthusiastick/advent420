class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_today
    if Date.today.month == 12
      @today = Date.today.day
    else
      @today = 31
    end
  end

end
