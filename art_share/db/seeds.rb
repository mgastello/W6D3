# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Artwork.destroy_all
User.destroy_all
ArtworkShare.destroy_all
picasso = User.create(username: 'Picasso')
davinci = User.create(username: 'Da Vinci')
vangogh = User.create(username: 'Van Gogh')

a1 = Artwork.create(title:'Wave',image_url: 'w@',artist_id: picasso.id)
a2 = Artwork.create(title:'R',image_url: '1@',artist_id:picasso.id)
a3 = Artwork.create(title:'M',image_url: 'w3@',artist_id:davinci.id)
a4 = Artwork.create(title:'U',image_url: 'w2@',artist_id:vangogh.id)

as1 = ArtworkShare.create(viewer_id: picasso.id,artwork_id: a1.id)