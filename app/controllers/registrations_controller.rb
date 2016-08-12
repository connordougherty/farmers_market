class RegistrationsController < Devise::RegistrationsController
	protected

  def after_sign_up_path_for(resource)
  	if current_user.seller?
    	new_storefront_path
    else
    	new_profile_path
    end
  end

	def create
	  super
	  current_or_guest_user
	end
end
