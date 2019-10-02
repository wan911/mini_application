class Tweet < ApplicationRecord
  belongs_to :user
  validates :text, presence: true, null: false
end
