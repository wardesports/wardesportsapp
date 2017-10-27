class HostGroup < ApplicationRecord
belongs_to :host, foreign_key: :host_id, class_name: "User"
belongs_to :group
end
