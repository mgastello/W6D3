class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true#, uniqueness: true
  validates :image_url, uniqueness: true

  validates :artist_id, uniqueness: {
    scope: :title,
    message: "'%{value}' artist and title combination should be unique"
  }
  belongs_to :artist, inverse_of :artpieces
  end