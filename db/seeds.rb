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

7.times do
  billboard = Billboard.create(
    title: Faker::Music.genre
  )
  3.times do
    artist = Artist.create(
      name: Faker::Music.band
      rank: Faker::Number.number(digits: 100)
      numAlbs: Faker::Number.number(digits: 10)
    )
    Song.create(
      billboard_id: billboard.id,
      artist_id: artist.id,
      #genre: genre.id,
    )
  end
end
puts 'Data Seeded'