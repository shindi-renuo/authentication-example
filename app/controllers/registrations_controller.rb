class RegistrationsController < ApplicationController
  allow_unauthenticated_access only: [ :new, :create ]

  # GET /sign_up
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      # Automatically sign in the user after successful registration
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
