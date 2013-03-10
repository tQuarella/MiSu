# == Schema Information
#
# Table name: clothing_items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ClothingItem < ActiveRecord::Base
  attr_accessible :name, :description, :tags_attributes
  
  validates :name, :presence => true
  
  has_many :comments, :dependent => :destroy
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc {|attrs| attrs.all? { |k, v| v.blank? } }
end
