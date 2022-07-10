class Category < ApplicationRecord
  has_many :exhibitor_categories
  has_many :exhibitors, through: :exhibitor_categories
end
