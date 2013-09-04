class Channel
  include Mongoid::Document
  include Mongoid::Timestamps

  field               :channel_name,  type: String
  # validates_format_of :channel_name,  with: /^[A-Za-z\d-]+$/
  validates_length_of :channel_name,  minimum: 4

  embeds_many :feeds

  # validates_format_of :location,      with: /^[A-Za-z\d]+$/
  # validates_format_of :name,          with: /^[A-Za-z\d]+$/

end
