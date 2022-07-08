class Category < ApplicationRecord
  has_many :exhibitor_categories
  has_mpany :exhibitors, through: :exhibitor_categories
end
