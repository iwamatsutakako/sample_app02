class UsersController < ApplicationController

<<<<<<< HEAD
  def index
    @users = User.all
    #@users = User.paginate(page: params[:page])
  end

=======
>>>>>>> sign-up
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
<<<<<<< HEAD

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
  end
=======
end
>>>>>>> sign-up
