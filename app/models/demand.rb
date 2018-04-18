class Demand < ApplicationRecord
  scope :unmet, -> { where(met: false) }
  validates :description, presence: true
end
