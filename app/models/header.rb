class Header < ApplicationRecord
  belongs_to :website

  validates :text, presence: true
end
