class Message < ApplicationRecord
  has_many :thoughts, dependent: :destroy
  belongs_to :conversation

  validates_presence_of :text

end
