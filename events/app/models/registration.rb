# Registration
# @param name String
# @param how_heard Bool
# @param event_id Int
class Registration < ActiveRecord::Base
  HOW_HEARD_OPTIONS = %w(Newsletter Blog Twitter Search Friend/Coworker Other)

  validates :name, presence: true
  validates :email, format: { with: /(\S+)@(\S+)/ }

  validates :how_heard, inclusion: { in: HOW_HEARD_OPTIONS }
  belongs_to :event
end
