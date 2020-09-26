class Recipe < ActiveRecord::Base
  has_many :ingredients 
  validates :title, 
end
