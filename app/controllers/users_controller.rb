class UsersController < ApplicationController
  def index
    user = User.new(params_user_search)
    @users = user.execute
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age)
  end
end
