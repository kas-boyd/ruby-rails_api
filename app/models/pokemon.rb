class Pokemon < ApplicationRecord
  belongs_to :trainers
  belongs_to :teams
end
