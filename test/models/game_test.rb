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
require "test_helper"

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
