class ClothingItem < ActiveRecord::Base
  attr_accessible :name, :description, :tags_attributes
  
  validates :name, :presence => true
  
  has_many :comments, :dependent => :destroy
  has_many :tags
  
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc {|attrs| attrs.all? { |k, v| v.blank? } }
end
