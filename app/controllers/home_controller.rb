class HomeController < ApplicationController

  def index
    @users = User.all
    @signed_in_users = User.for_js('this.current_sign_in_at > this.last_sign_out_at')
  end

  def channel
    @channel_name = params[:channel_name]
  end

end
