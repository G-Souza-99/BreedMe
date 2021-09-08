class RegistrationsController < Devise::RegistrationsController
  def after_update_path_for(_resource)
    pets_path
  end
end
