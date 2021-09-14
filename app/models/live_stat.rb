class LiveStat < ApplicationRecord
  belongs_to :game
  before_validation on: :create do
    create_game
    end
end
