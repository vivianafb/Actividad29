class SessionsController < ApplicationController
    def destroy
        reset_session
        redirect_to users_sign_up_path
    end
    
    def new
        @user = User.new
    end

    def create
        a = User.find_by(email: params[:user][:email])
         if a.present?
             session[:user_id] = a.id
             redirect_to root_path
         else
             redirect_to users_sign_in_path
         end
     end
end
