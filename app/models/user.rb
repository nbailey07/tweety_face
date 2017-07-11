class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# validates :username, presence: true, uniqueness: true

#   validates :message, presence: true
#   validates :message, length: {maximum: 140, 
# too_long: "A tweet is only 140 max. Everybody knows that!"}

  has_many :tweets
  mount_uploader :avatar, AvatarUploader
end
