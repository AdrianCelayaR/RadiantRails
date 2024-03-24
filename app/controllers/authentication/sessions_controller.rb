class Authentication::SessionsController < ApplicationController
    skip_before_action :protect_pages
    def new 
    end

    def create
        @user = User.find_by("email = :login OR username = :login", {login: params[:login]})
        
        if @user&.authenticate(params[:password])
            session[:user_id] = @user.id
            pp session[:user_id]
            redirect_to root_path, notice: "Session created successfully"
        else
            redirect_to new_session_path, alert: "Invalid login"
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out successfully"
    end

    # private

    # def user_params
    #     params.require(:user).permit(:email, :username, :password, :password_confirmation)
    # end
end