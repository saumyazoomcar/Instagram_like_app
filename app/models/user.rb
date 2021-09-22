class User < ApplicationRecord
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :images
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def full_name
    return "#{f_name} #{last_name}" if f_name || last_name
    "Anonymous"
   end
  
end
