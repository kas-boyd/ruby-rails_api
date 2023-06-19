class Trainer < ApplicationRecord
    has_many :pokemons
    has_one :teams
end
