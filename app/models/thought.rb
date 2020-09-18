class Thought < ApplicationRecord
  belongs_to :message

  validates_presence_of :text

end
