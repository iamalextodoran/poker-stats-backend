class Light::PlayerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :created_at, :first_places_won, :second_places_won

  has_many :games
end
