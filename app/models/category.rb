class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy
  has_many :items, through: :subcategories
  belongs_to :list
end