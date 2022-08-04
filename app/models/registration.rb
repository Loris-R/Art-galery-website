class Registration < ApplicationRecord
  TITLES_EN = ["Mr.", "Mrs."]
  STATUS_EN = ["Collector", "Press", "Curator", "Visitor"]
  CATEGORIES = ["Art", "Design"]

  TITLES_FR = ["Mr.", "Mme."]
  STATUS_FR = ["Collectionneur", "Press", "Curateur", "Visiteur"]

  validates :title, :first_name, :last_name, :status, :email, :category, presence: true
end
