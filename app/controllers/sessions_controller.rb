class SessionsController < ApplicationController

    def new
    end

    def create
        user = user.find_by(email: params[:email])
        if user
            flash[:alert] = "encontrado"
        else
            flash[:alert] = "benis"
        end
        #user = user.find_by(email: params[:email])
        #password = password.find_by(email: params[:email])
        #if password.present? && password.authenticate(params[:password])
            #user = user.find_by(email: params[:email])
            #session[:user_id] = user.id
            #redirect_to root_path, notice: "Logged in succesfully"
        #else
            #flash[:alert] = "Usuário ou senha inválidos"
            #render :new
        #end
    end
    
    def destroy
        session[:user_id] = nil 
        redirect_to root_path, notice:"Logged out"
    end
end