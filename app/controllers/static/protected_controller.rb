# TODO Add real authentication
module Static
  class ProtectedController < ApplicationController
    before_filter :authenticate

    private # ----------------------------------------------

    Users = { "baktinet" => "6bd5069e47fc68f2" }

    def authenticate
      authenticate_or_request_with_http_basic do |user, pass|
        if Users[user] == pass
          session[:user_id] = 1
        end
      end
    end
  end
end
