# == Schema Information
#
# Table name: competitions
#
#  id          :integer          not null, primary key
#  name        :string
#  submissions :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  league_id   :integer
#
class Competition < ApplicationRecord
end
