class HomeController < ApplicationController

  def index
    if current_user
      redirect_to lounge_path
    end

    @users = User.all
    @signed_in_users = User.for_js('this.current_sign_in_at > this.last_sign_out_at')
  end

  def channel
    @channel_name = params[:channel_name] ||= 'lounge'
    @all_channels = Channel.all
  end

  def test
  end

end
