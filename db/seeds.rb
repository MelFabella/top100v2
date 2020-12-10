7.times do
  billboard = Billboard.create(
    title: Faker::Music.genre
  )
  3.times do
    artist = Artist.create(
      name: Faker::Music.band
    )
    Song.create(
      billboard_id: billboard.id,
      artist_id: artist.id,
      #genre: genre.id,
    )
  end
end
puts 'Data Seeded'