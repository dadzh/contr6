class User < ApplicationRecord
	has_many :photos, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
	validates :name, presence: true, length: {maximum: 50}
end
