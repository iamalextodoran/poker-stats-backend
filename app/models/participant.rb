# frozen_string_literal: true

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
class Participant < ApplicationRecord
  belongs_to :player
  belongs_to :game

  scope :rebuy, -> { where(rebuy: true) }
  scope :entry, -> { where(rebuy: false) }
end
