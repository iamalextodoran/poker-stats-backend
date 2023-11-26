# frozen_string_literal: true

# == Schema Information
#
# Table name: players
#
#  id         :bigint           not null, primary key
#  first_name :string           default("")
#  last_name  :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Player < ApplicationRecord
  has_many :participants
  has_many :games, through: :participants

  def full_name
    "#{first_name} #{last_name}"
  end

  def first_places_won
    games.first_place_is(id).count
  end

  def second_places_won
    games.second_place_is(id).count
  end
end
