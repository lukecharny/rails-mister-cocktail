class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, uniqueness: true, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: {scope: :ingredient}
end

# You can't delete an ingredient if it used by at least one cocktail.

