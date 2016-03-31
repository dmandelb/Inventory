class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy
  belongs_to :list
end