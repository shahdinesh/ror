class Comment < ApplicationRecord
  include Visible
  belongs_to :article

  validates :commenter, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { minimum: 10 }
end
