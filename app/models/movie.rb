class Movie < ApplicationRecord
  has_many :bookmarks
  # belongs_to :list, through: :bookmarks
  # validates_associated :bookmarks, uniqueness: true

  # A movie must have a unique title and an overview.
  # A list must have a unique name.
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :overview, presence: true
  validates :overview, uniqueness: true

end
