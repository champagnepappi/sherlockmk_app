class LoginsController < ApplicationController
  def new

  end
  def create
    user = User.find_by(name: params[:login][:name])
    if user && user.authenticate(params[:login][:password])
      redirect_to root_path
    else
      render 'new'
    end
  end
end
