class SessionsController < ApplicationController
  # specified the response action to the browser in this format for all the
  # actions in that controller
  respond_to? :json
  # checks if the current user has valid content - email/password
  before_action :validate_user!, except: [:create]  
  def new
  end

  def user
    user = User.find(@current_user_id)
    render json: user.as_json(only: [:email, :id])
                     .merge("token": user.generate_jwt) 

  end

  #creating a new session
  def create
    user = User.find_by_email(params[:email])
    # confirming if password matches to that user email
    if user && user.authenticate(params[:password])
      render json: user.as_json(only: [:email, :id])
                       .merge("token": user.generate_jwt)
    else 
      render json: { errors: {'email or password': ["is invalid"]}}, 
                    status: :unprocessable_entity
    end                  
  end

  #destroying a current session
  def destroy
    session[:user_id] = nil
    head(:ok, status: :no_content) 
  end
end
