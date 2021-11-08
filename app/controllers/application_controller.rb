# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  add_flash_types :success, :warning, :danger, :info

  def after_sign_in_path_for(user)
    if user.type == 'Player'
      player_path(current_user.id)
    else
      teams_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name type amount])
  end
end
