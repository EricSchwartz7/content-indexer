class Website < ApplicationRecord
  has_many :headers
  has_many :links
end
