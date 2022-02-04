class ApplicationController < ActionController::Base
    # After devise we add this code below
    before_action :authenticate_user!
end
