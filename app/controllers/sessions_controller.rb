class SessionsController < ApplicationController
    
  
    # GET /users
    def index
        byebug
      @sessions = Player.all
  
      render json: @sessions
    end
end
  