class UsersController < ApplicationController
  before_action :ensure_correct_user, {only: :show}

  def show
    @user = User.find_by(id: params[:id])
  end
  
  def sign_up_2
  end

  def sign_up_3
  end

  def ensure_correct_user
    if current_user.id != params[:id].to_i
      flash[:notice] = "権限がありません。"
      redirect_to("/")
    end
  end
end
