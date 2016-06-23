class Player < ActiveRecord::Base
  belongs_to :profiles
  belongs_to :games
end
