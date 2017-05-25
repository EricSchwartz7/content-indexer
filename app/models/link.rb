class Link < ApplicationRecord
  belongs_to :website

  validates :text, presence: true
  validates :url, presence: true
end
