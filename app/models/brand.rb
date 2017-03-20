class Brand < ApplicationRecord
  has_many :collections, dependent: :destroy
  has_many :nail_polishes, dependent: :destroy

  enum status: { active: 0, temporarily_closed: 1, permanently_closed: 2 }
end
