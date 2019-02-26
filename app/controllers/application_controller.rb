class ApplicationController < ActionController::Base

  protected
    def after_sign_in_path_for(resource)
      if resource.has_role? :admin
        admin_index_path
      else
        request.env['omniauth.origin'] || stored_location_for(resource) || visitors_path
      end
    end

    def after_sign_out_path_for(resource_or_scope)
      new_user_session_path
    end
end
