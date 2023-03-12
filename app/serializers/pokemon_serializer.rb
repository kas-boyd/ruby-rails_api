class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :trainers
end
