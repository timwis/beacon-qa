class Need < ApplicationRecord
  self.primary_key = :id

  has_many :notes
end
