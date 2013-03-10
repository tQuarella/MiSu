# == Schema Information
#
# Table name: tags
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  clothing_item_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Tag < ActiveRecord::Base
  belongs_to :clothing_item
end
