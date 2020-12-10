10.times do
  billboard = Billboard.create(
    title: Faker::Music.genre,
    details: Faker::Movies::StarWars.quote
  )

  5.times do
    artist = Artist.create(
      name: Faker::Music.band,
      rank: Faker::Number.number(digits: 100),
      numAlbs: Faker::Number.number(digits: 10)  
    )

    Song.create(
      billboard_id: billboard.id,
      artist_id: artist.id
    )
  end
end

puts 'Data seeded'