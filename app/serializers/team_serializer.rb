class TeamSerializer < ActiveModel::Serializer
    attributes :id

    belongs_to :trainers
    has_many :pokemon
  end
