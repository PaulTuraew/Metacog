class User < ActiveRecord::Base
belongs_to :industry
belongs_to :company
has_many :moods

#add save handlers for formatting data
  before_create :create_remember_token
  before_save :normalize_fields

  #validates name
  validates :first_name, presence: true, length: {maximum: 50}
  validates :last_name, presence: true, length: {maximum: 50}

  #validates email
  validates :email, presence: true, uniqueness: {case_sensitive: false}, format: {with: /[^@]+@[^@]+/}

  #validates password length
  validates :password, length: { minimum: 8 }

  #secure password features
  has_secure_password

  #create new remember token for the user
  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  # creates a new session token for the user
  def create_remember_token
    remember_token = User.hash(User.new_remember_token)
  end
  #  normalize fields for consistancy
  def normalize_fields
    self.email.downcase!
  end

end
