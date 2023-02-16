# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  image_url  :text             not null
#  artist_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true#, uniqueness: true
  validates :image_url, uniqueness: true

  validates :artist_id, uniqueness: {
    scope: :title,
    message: "'%{value}' artist and title combination should be unique"
  }

  belongs_to :artist, 
    # inverse_of: :artpieces,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

  has_many :shared_viewers,
    through: :artwork_shares,
    source: :viewer
end
