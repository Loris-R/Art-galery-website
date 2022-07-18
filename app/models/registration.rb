class Registration < ApplicationRecord
  TITLES = ["Mr.", "Mrs."]
  STATUS = ["Collector", "Press", "Curator", "Visitor"]
  CATEGORIES = ["Art", "Design"]

  validates :title, :first_name, :last_name, :status, :email, :category, presence: true
end
