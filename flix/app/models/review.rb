# Review model class
class Review < ActiveRecord::Base
  STARS = [1, 2, 3, 4, 5]

  validates :name, presence: true
  validates :comment, length: { minimum: 4 }
  validates :stars, inclusion: { in: STARS }

  belongs_to :movie
end
