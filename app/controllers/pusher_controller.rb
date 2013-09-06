class PusherController < ApplicationController
  protect_from_forgery :except => :auth # stop rails CSRF protection for this action

  def auth
    if current_user
      response = Pusher[params[:channel_name]].authenticate(params[:socket_id], {
        user_id: current_user.id.to_s,
        user_info: { name: current_user.name }
      })
      render :json => response
    else
      render :text => "Forbidden", :status => '403'
    end
  end
end