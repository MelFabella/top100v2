10.times do
  artist = Artist.create(
    name: Faker::Music.band
  )

  5.times do
    billboard = Billboard.create(
      title: Faker::Hipster.word,
      details: Faker::Book.genre 
    )

    Song.create(
      artist_id: artist.id,
      billboard_id: billboard.id
    )
  end
end
