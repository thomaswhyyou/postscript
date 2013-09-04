class Feed
  include Mongoid::Document
  include Mongoid::Timestamps

  field :type,      type: String
  field :time_sent, type: Time
  field :from_user, type: String
  field :message,   type: String

  embedded_in :channel

  # validates :username, presence: true
  # validates :username, uniqueness: true
  # validates :username, :length => { :minimum => 2 }
  # validates :username, :length => { :maximum => 14 }
  # validates_length_of :password, minimum: 4, maximum: 16
end
