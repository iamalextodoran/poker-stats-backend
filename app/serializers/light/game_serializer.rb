class Light::GameSerializer < ActiveModel::Serializer
  attributes :id, :fee, :pot, :created_at

  belongs_to :first_place, serializer: Light::PlayerSerializer
  belongs_to :second_place, serializer: Light::PlayerSerializer
  has_many :entries, serializer: Light::ParticipantSerializer
end
