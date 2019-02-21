class Review < ApplicationRecord
    belongs_to :restaurant
    RATINGS = %w[0 1 2 3 4 5]
    validates :content, presence: true
    validates :rating, inclusion: { in: RATINGS }, presence: true, numericality: true
end


