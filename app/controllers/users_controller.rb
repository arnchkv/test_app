class UsersController < ApplicationController

    def new
        @user = User.new

    end
    
    def create
        @user = User.new(user_params)
        if @user.save

            flash[:success] = "Welcome to the Alpha Blog #{@user.username} "
            redirect_to admissions_path
        else
            render 'new'
        end 
    end

    def index
        @users = User.paginate(page: params[:page], per_page: 3)
    end

    def edit
        @user = User.find(params[:id])
        
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:success] = "successfully updated"
            redirect_to admissions_path
        else
            render 'edit'
        end
        
    end

    def show

        @user = User.find(params[:id])
        @user_articles = @user.admissions.paginate(page: params[:page], per_page:1)
    end

    private
        def user_params
            params.require(:user).permit(:username, :email, :password)
        end

end