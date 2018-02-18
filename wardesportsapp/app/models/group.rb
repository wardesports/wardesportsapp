class Group < ApplicationRecord
  has_many :events
  has_many :member_groups
  has_many :members, through: :member_groups, source: :member
  has_many :host_groups
  has_many :hosts, through: :host_groups, source: :host

end
