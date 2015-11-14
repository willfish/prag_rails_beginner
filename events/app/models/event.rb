class Event < ActiveRecord::Base
  def free?
    price.blank? || price.zero?
  end

  def self.upcoming
    where('starts_at >= ?', Time.now).order_by(:starts_at)
  end
end
