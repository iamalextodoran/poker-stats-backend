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
require "test_helper"

class PlayerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
