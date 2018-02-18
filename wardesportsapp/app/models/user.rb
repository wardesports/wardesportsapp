class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :host_groups
  has_many :member_groups

  has_many :hosted_groups, through: :host_groups, source: :group
  has_many :participated_groups, through: :member_groups, source: :group

  # has_many :events, :dependent => :destroy
  # has_many :groups, :dependent => :destroy
end
