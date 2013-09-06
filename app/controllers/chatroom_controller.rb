class ChatroomController < ApplicationController

  def broadcast
    target_channel    = params[:target_channel]
    msg_sender        = params[:msg_sender]
    msg_content       = params[:msg_content]
    msg_timestamp     = Time.now.strftime('%I:%M%p')


    respond_to do |format|
      response = Pusher[target_channel].trigger('display_msg', {
        msg_sender:     msg_sender,
        msg_content:    msg_content,
        msg_timestamp:  msg_timestamp
      })

      format.json { render json: response }
    end
  end

end
