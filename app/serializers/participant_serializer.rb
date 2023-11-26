# == Schema Information
#
# Table name: participants
#
#  id         :bigint           not null, primary key
#  rebuy      :boolean          default(FALSE)
#  player_id  :bigint           not null
#  game_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ParticipantSerializer < ActiveModel::Serializer
  attributes :id, :player, :game_id, :created_at
end
