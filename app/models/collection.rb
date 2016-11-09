class Collection < ApplicationRecord
  belongs_to :brand
  has_many :nail_polishes, dependent: :destroy
end
