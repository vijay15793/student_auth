class ApplicationController < ActionController::Base
  #layout 'school'
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_path, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
    "/users/list"
      
  end
  
  def after_sign_up_path_for(resource)
    "/users/index"
  end
  
end
