class Brand < ApplicationRecord
  has_many :collections, dependent: :destroy
end
