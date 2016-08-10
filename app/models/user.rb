#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_one :profile
  belongs_to :admin
end
