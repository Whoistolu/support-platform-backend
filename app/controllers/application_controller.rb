class ApplicationController < ActionController::API
   def current_user
        return nil unless request.headers["Authorization"]
        token = request.headers["Authorization"].split(" ").last
        decoded = JWT.decode(token, Rails.application.secret_key_base)[0]
        User.find(decoded["user_id"])
    rescue
        nil
    end
end
