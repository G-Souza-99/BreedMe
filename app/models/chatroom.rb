class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :owner, class_name: 'User'
  has_many :messages, dependent: :destroy

  validates :user, uniqueness: {scope: :owner}
end
