class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :thoughts, through: :messages, dependent: :destroy

  validates_presence_of :title, :start_date

end
