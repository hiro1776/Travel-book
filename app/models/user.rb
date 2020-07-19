class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :about, dependent: :destroy
         has_many :travel_posts, dependent: :destroy
         has_many :travel_histories, dependent: :destroy

end
