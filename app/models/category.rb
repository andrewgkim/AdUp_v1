class Category < ActiveRecord::Base

  has_many :taggings
  has_many :ads, :through => :taggings

end
