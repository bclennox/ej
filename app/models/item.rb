class Item < ApplicationRecord
  validates :sender, :description, presence: true
end
