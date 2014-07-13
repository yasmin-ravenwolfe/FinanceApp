class Group < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships

  # add user_id
end
