class List < ActiveRecord::Base
  has_many :categories, dependent: :destroy
  has_many :subcategories, through: :categories
  belongs_to :user
end