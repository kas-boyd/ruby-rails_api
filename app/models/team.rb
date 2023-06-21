class Team < ApplicationRecord
    belongs_to :trainers
    has_many :pokemons
  end
  