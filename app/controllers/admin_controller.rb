class AdminController < ApplicationController
before_action :authorize_user, only: :index

  def index
    @users = User.all
    @posts = Post.all
  end

  private

def authorize_user
  if current_user.user_type != 'admin'
    redirect_to root_path, notice: 'Access DENIED'
  end
end

end
