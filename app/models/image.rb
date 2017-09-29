class Image < ApplicationRecord
  belongs_to :drone

  validates :url, presence: true
end
