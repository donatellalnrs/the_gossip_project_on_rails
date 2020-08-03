class City < ApplicationRecord
  has_many :users #une ville a plusieurs habitants
end
