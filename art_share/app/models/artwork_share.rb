# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint           not null, primary key
#  viewer_id  :bigint           not null
#  artwork_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ArtworkShare < ApplicationRecord
    belongs_to :viewer, inverse_of: :artwork_shares

    belongs_to :artpiece,
        # inverse_of: :artwork_shares,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork
end
