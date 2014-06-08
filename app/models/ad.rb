class Ad < ActiveRecord::Base

  has_many :taggings
  has_many :categories, :through => :taggings

  has_many :ad_views
  has_many :users, :through => :ad_views

end
