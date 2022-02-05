class Message < ApplicationRecord
  belongs_to :inbox
  belongs_to :user

  MIN_BODY = 6
  MAX_BODY = 2000

  validates :body, presence: true
  # add uniqueness for rails 7 instead of just true we add scope
  # validates :body, uniqueness: { scope: :inbox_id }
  validates :name, length: { in: MIN_BODY..MAX_BODY }
end
