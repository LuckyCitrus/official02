class DashboardController < ApplicationController
    #before_action :authenticate_user!, :configured_permitted_parameters, if: :devise_controller?

    protected   
    def configured_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    end

end
