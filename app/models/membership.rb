class Membership < ApplicationRecord
  belongs_to :competition
  belongs_to :club
end
