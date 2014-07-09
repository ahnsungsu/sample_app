class Portrait < ActiveRecord::Base
  belongs_to :user
  validates :filename, presence: true
  validates :user_id, presence: true
end
