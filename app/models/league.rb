# == Schema Information
#
# Table name: leagues
#
#  id          :integer          not null, primary key
#  description :string
#  game        :string
#  image       :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#
class League < ApplicationRecord
end
