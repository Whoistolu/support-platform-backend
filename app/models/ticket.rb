class Ticket < ApplicationRecord
  belongs_to :customer, class_name: "User"
  belongs_to :assigned_agent, class_name: "User"
  has_many :comments
  has_many_attached :attachments

  enum :status, { open: 0, in_progress: 1, closed: 2 }
end
