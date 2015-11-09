class Movie < ActiveRecord::Base
  FLOP_THRESHOLD = 50_000_000
  
  def flop?
    total_gross < FLOP_THRESHOLD
  end
end
