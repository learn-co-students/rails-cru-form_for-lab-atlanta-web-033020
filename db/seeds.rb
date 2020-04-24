# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.destroy_all
Genre.destroy_all
Artist.destroy_all

adele = Artist.create(name: "Adele", bio: "A Very Talented Singer")
drake = Artist.create(name: "Drake", bio: "The One Dooo Hates")
nf = Artist.create(name: "NF", bio: "A Very Underrated Rapper")

pop = Genre.create(name: "Pop")
rap = Genre.create(name: "Rap")
soul = Genre.create(name: "Soul")

hello = Song.create(name: "Hello", artist_id: adele.id, genre_id: pop.id)
rolling_in_the_deep = Song.create(name: "Rolling in the Deep", artist_id: adele.id, genre_id: soul.id)
hotline_bling = Song.create(name: "Hotline Bling", artist_id: drake.id, genre_id: pop.id)
all_of_the_lights = Song.create(name: "All of the Lights", artist_id: drake.id, genre_id: rap.id)
green_lights = Song.create(name: "Green Lights", artist_id: nf.id, genre_id: rap.id)
mansion = Song.create(name: "Mansion", artist_id: nf.id, genre_id: soul.id)
the_search = Song.create(name: "The Search", artist_id: nf.id, genre_id: rap.id)
time = Song.create(name: "Time", artist_id: nf.id, genre_id: pop.id)