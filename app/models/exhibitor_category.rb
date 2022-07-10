class ExhibitorCategory < ApplicationRecord
  belongs_to :exhibitor
  belongs_to :category
end
