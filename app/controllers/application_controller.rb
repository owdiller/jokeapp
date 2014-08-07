class ApplicationController < ActionController::Base
    
 def login_required
 end
    protect_from_forgery with: :exception
end
