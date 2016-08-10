#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile
  belongs_to :admin, inverse_of: :user
end
