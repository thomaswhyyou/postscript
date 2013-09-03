class User
  include Mongoid::Document
  include Mongoid::Timestamps
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:github]

  ## Database authenticatable
  field :email,              :type => String, :default => ""
  field :encrypted_password, :type => String, :default => ""

  field :name,               :type => String, :default => ""
  field :provider,            type: String
  field :uid,                 type: String
  # validates_presence_of :name
  # validates_uniqueness_of :name, :email, :case_sensitive => false

  ## Recoverable
  field :reset_password_token,   :type => String
  field :reset_password_sent_at, :type => Time

  ## Rememberable
  field :remember_created_at, :type => Time

  ## Trackable
  field :sign_in_count,      :type => Integer, :default => 0
  field :current_sign_in_at, :type => Time
  field :last_sign_in_at,    :type => Time
  field :last_sign_out_at,   :type => Time
  field :current_sign_in_ip, :type => String
  field :last_sign_in_ip,    :type => String


  ## Confirmable
  # field :confirmation_token,   :type => String
  # field :confirmed_at,         :type => Time
  # field :confirmation_sent_at, :type => Time
  # field :unconfirmed_email,    :type => String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, :type => Integer, :default => 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    :type => String # Only if unlock strategy is :email or :both
  # field :locked_at,       :type => Time

  ## Token authenticatable
  # field :authentication_token, :type => String

  ## Omniauthable
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.password = Devise.friendly_token[0,20]
      if auth['info']
         user.name = auth['info']['name'] || ""
         user.email = auth['info']['email'] || "dummyemail@example.com"
      end
    end
  end

  # def online?
  #   if current_sign_in_at.present?
  #     last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
  #   else
  #     false
  #   end
  # end

end
