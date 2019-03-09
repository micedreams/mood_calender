class Feel < ApplicationRecord
 validates :mood, numericality: {greater_than_or_equal_to:1 , less_than_or_equal_to:5}
 validates :date, uniqueness: true
end
