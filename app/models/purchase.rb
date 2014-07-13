class Purchase < ActiveRecord::Base
  has_many :receipts
  has_many :users, through: :receipts

  validates :description, presence: true
end
