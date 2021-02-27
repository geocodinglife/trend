class Link < ApplicationRecord
  has_many :ranks

  validates :url, presence: true
  validates :text, presence: true
end
