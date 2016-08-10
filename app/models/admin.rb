class Admin < ActiveRecord::Base
  has_one :user, inverse_of: :admin
end
