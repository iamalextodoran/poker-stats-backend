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
class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :created_at

  has_many :games
end
