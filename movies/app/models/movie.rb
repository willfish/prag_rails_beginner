class Movie < ActiveRecord::Base
  FLOP_THRESHOLD = 50_000_000
  RATINGS = [['U', 1], ['PG', 2], ['12A', 3], ['12', 4], ['15', 5], ['18', 6], ['R18', 7]]

  def flop?
    total_gross < FLOP_THRESHOLD
  end
end
