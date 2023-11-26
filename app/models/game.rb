# frozen_string_literal: true

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
class Game < ApplicationRecord
  has_many :participants

  has_many :rebuys, -> { rebuy }, class_name: 'Participant'
  has_many :entries, -> { entry }, class_name: 'Participant'

  belongs_to :first_place, class_name: 'Player'
  belongs_to :second_place, class_name: 'Player'

  scope :first_place_is, ->(id) { where(first_place_id: id) }
  scope :second_place_is, ->(id) { where(second_place_id: id) }

  def pot
    participants.count * fee
  end
end
