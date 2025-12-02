class Product < ApplicationRecord
  has_many :comments, -> { order(created_at: :desc) }, dependent: :destroy
end
