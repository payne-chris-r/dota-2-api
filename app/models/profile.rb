class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :players, inverse_of: :profile
  validates :user, uniqueness: true
end
