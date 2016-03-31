class Category < ActiveRecord::Base
  has_many :subcategories
  belongs_to :list
end