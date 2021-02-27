class PageRank < ApplicationRecord
  belongs_to :link
  validates :rank, presence: true
end
