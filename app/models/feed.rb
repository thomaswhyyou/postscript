class Feed
  include Mongoid::Document
  include Mongoid::Timestamps

  # field :time_sent, type: Time
  field :sender,    type: String
  field :content,   type: String
  field :pretty_time,   type: String, default: ""

  embedded_in :channel

end
