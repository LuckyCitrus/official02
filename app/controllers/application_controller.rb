class ApplicationController < ActionController::Base
  include Pundit
  include Pagy::Backend
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :verify_authorized, except: index, unless: :devise_controller?

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  private
  def user_not_authorized(exception)
	policy_name = exception.policy.class.to_s.underscore
	flash[:alert] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
	redirect_to(request.referrer || root_path)
  end

	rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  def record_not_found
	flash[:alert] = "You are not authorized to perform this action."
		redirect_to(request.referrer || root_path)
  end

  def admin_only
    unless current_user.admin?
        redirect_to root_path, :alert => "You are not authorized to access this page."
    end
  end

  def employee_only
    unless current_user.admin? || current_user.employee?
        redirect_to root_path, :alert => "You are not authorized to access this page."
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
	  devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

end