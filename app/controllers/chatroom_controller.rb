class ChatroomController < ApplicationController

  def broadcast
    target_channel    = params[:target_channel]
    msg_sender        = current_user.name
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

  def gethistory
    target_channel_noprefix    = params[:target_channel_noprefix].downcase
    target_channel = "presence-" + target_channel_noprefix

    selected_channel = Channel.where(channel_name: target_channel_noprefix)
    last_ten_history = selected_channel.first.feeds.desc(:created_at).limit(10)
    last_ten_history_reversed = []

    last_ten_history.each do |feed|
      last_ten_history_reversed.unshift(feed)
    end

    binding.pry

    respond_to do |format|
      response = Pusher[target_channel].trigger('display_history', {
        last_ten_history_reversed: last_ten_history_reversed
      })

      format.json { render json: response }
    end
  end

end
