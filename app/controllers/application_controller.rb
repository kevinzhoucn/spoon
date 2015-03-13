class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_index_bar  

  protected
    def set_index_bar
      if controller_name == 'front' && action_name == 'index'
        @home_index_bar = true
      end
    end
end
