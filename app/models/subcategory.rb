class Subcategory < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :category
end