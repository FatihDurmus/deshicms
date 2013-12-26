class ManagementsController < ApplicationController
  before_filter :authenticate_admin!
  def index
    @t = User.search(params[:q])
    @user = @t.result(distinct: true)
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    end
  end
  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
