class SessionsController < ApplicationController
  skip_before_action :ensure_authenticated_user, only: %i( new create )

  def new
    # @users = User.all
    # render layout: false
  end

  def create
    user = User.where(name: params[:name]).first_or_create
    authenticate_user(user.id)
    redirect_to messages_url
  end

  def destroy
    unauthenticate_user
    redirect_to new_session_url
  end
end