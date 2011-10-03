class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default(new_user_session_url)
    else
      render :action => :new
    end
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
  end
end