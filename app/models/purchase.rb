class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  # attr_accessor :description

  validates :description, presence: true
end
