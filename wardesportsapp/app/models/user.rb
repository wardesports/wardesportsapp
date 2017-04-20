class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :userevents, dependent: :destroy
  has_many :events, through: :userevents
  has_many :usergames, dependent: :destroy
  has_many :games
  has_many :notifications, dependent: :destroy
end
