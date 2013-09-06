class ChatroomController < ApplicationController

  def broadcast
    target_channel              = params[:target_channel]
    target_channel_noprefix     = params[:target_channel_noprefix].downcase
    msg_sender                  = current_user.name
    msg_content                 = params[:msg_content]

    selected_channel = Channel.where(channel_name: target_channel_noprefix).first
    new_msg_to_broadcast = selected_channel.feeds.create! sender: msg_sender, content: msg_content

    respond_to do |format|
      response = Pusher[target_channel].trigger('display_msg', {
        msg_sender:     new_msg_to_broadcast.sender,
        msg_content:    new_msg_to_broadcast.content,
        msg_timestamp:  new_msg_to_broadcast.created_at.strftime('%I:%M%p')
      })

      format.json { render json: response }
    end
  end

  def gethistory
    target_channel_noprefix    = params[:target_channel_noprefix].downcase

    selected_channel = Channel.where(channel_name: target_channel_noprefix).first
    last_ten_history = selected_channel.feeds.desc(:created_at).limit(20)
    last_ten_history_reversed = []

    last_ten_history.each do |feed|
      raw_time = feed.created_at
      pretty_time = raw_time.strftime('%I:%M%p')
      feed.update_attributes(pretty_time: pretty_time)
      last_ten_history_reversed.unshift(feed)
    end

    respond_to do |format|
      format.json { render json: last_ten_history_reversed }
    end

  end

end
