# frozen_string_literal: true

#:nodoc:
class ApplicationController < ActionController::Base
  def set_admin_timezone
    Time.zone = 'Kolkata'
  end
end
