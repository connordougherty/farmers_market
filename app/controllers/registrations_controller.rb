class RegistrationsController < Devise::RegistrationsController
	def create
	  super
	  current_or_guest_user
	end

	protected

  def after_sign_up_path_for(resource)
  	new_profile_path
  end

	
end
