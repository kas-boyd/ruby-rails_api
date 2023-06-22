class Trainer < ApplicationRecord
    has_many :pokemons
    has_one :team
end
