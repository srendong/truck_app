class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles

  enum role: [ :user, :shipper, :trucker, :admin ]

  before_create :set_default_user

  def set_default_user
  	self.role = :user
  end

  def avatar_url
  	hash = Digest::MD5.hexdigest(email)
  	"http://www.gravatar.com/avatar/#{hash}?s=25&d=identicon"
  end
end