class RegistrationsController < Devise::RegistrationsController
	protected

  def after_sign_up_path_for(resource)
  	root_path
  end

	def create
	  super
	  current_or_guest_user
	end
end
