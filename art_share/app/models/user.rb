# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artpieces

    has_many :artwork_shares

    has_many :shared_artworks,
        through: :artwork_shares,
        source: :artpiece
end
