class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tattoo_requests, class_name: "TattooRequest", foreign_key: 'user_id'
  has_many :tattoo_orders, class_name: "TattooRequest", foreign_key: 'tattoo_artist_id'

  has_many :artist_specialties
  has_many :specialties, through: :artist_specialties
  enum kind: [ :user, :tattoo_artist ]
end
