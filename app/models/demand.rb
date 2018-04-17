class Demand < ApplicationRecord
  scope :unmet, -> { where(met: false) }
end
