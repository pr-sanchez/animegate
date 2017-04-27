class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :set_last_seen, if: proc { user_signed_in? && (session[:last_seen] == nil || session[:last_seen] <= 30.minutes.ago) }

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
      added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

      attr_accessor :login



      private
      def set_last_seen
        current_user.update_attribute(:last_seen, Time.now)
        session[:last_seen] = Time.now
      end

end
