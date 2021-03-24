class SessionsController < ApplicationController

    def show
        @name = current_user
    end
   
    def new
    end

    def create
        if params[:name] && !params[:name].empty?
            session[:name] = params[:name]
            redirect_to '/home'
        else
            redirect_to '/login'
        end
    end

    def destroy
        if session[:name] && !session[:name].empty?
            session.delete :name
        end
    end

end