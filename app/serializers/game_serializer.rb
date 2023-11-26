# == Schema Information
#
# Table name: games
#
#  id              :bigint           not null, primary key
#  fee             :integer          default(50)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  first_place_id  :bigint
#  second_place_id :bigint
#
class GameSerializer < ActiveModel::Serializer
  attributes :id, :fee, :pot

  belongs_to :first_place
  belongs_to :second_place
  has_many :entries
  has_many :rebuys
end
