class Category < ApplicationRecord
  has_many :exhibitor_categories, dependent: :destroy
  has_many :exhibitors, through: :exhibitor_categories
end
