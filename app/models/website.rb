class Website < ApplicationRecord
  has_many :headers
  has_many :links

  validates :url, presence: true
end
