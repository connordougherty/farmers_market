class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    signup_redirect_path
  end
end
