class Contact < ApplicationRecord
	has_many :abouts, dependent: :destroy

	validates :email, presence: true, length: {maxmum:255},format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
	validates :message, presence: true
end