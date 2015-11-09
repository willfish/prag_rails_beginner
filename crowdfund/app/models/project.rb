class Project < ActiveRecord::Base
  def pledge_date_expired?
    pledging_ends_on < Time.now
  end
end
