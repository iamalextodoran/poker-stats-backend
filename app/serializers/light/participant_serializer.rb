class Light::ParticipantSerializer < ActiveModel::Serializer
  delegate :player, to: :object
  delegate :first_name, :last_name, to: :player

  attributes :id, :full_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
