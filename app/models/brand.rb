class Brand < ApplicationRecord
  has_many :collections, dependent: :destroy
  has_many :nail_polishes, dependent: :destroy
end
