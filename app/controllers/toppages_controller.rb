class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = @user.tasks.build  # form_for 用
      #@micropost = user.tasks.build
      @microposts = @user.tasks.order('created_at DESC').page(params[:page])
    end
  end
end