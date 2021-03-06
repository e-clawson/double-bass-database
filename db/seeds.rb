liz = User.create(username: "LizzyC", first_name: "Liz", last_name: "Clawson", password:"123456", email: "emclawson1@gmail.com", role: 1)
kate = User.create(username: "DoubleBassKate", first_name: "Kate", last_name: "Alexandra", password:"bassss", email: "doublebasskate@gmail.com", role: 0)
dan = User.create(username: "BassTheoryChaos", first_name: "Dan", last_name: "Bergren", password:"hello-world!", email: "basstheorychaos@gmail.com", role: 0)

Music.create(title: "Elegy No. 1 in D Major", instrumentation: "Solo with piano accompaniment", composer_first_name: "Giovanni", composer_last_name: "Bottesini", year_composed: 1870, length: "5 minutes" )
Music.create(title: "Concerto in A Major", instrumentation: "Solo with orchestra", composer_first_name: "Domenico", composer_last_name: "Dragonetti", year_composed: 1925, length: "20 minutes")
Music.create(title: "Ode D'Espagne", instrumentation: "Unaccompanied Solo", composer_first_name: "Francois", composer_last_name: "Rabbath", year_composed: 1963, length: "3 minutes" )
Music.create(title: "Suite for Double Basses", instrumentation: "Double Bass Quartet", composer_first_name: "Colin", composer_last_name: "Brumby", year_composed: 1975, length: "12 minutes")
Music.create(title: "Passione Amorosa", instrumentation: "Double Bass Duet (with piano accompaniment)", composer_first_name: "Giovanni", composer_last_name: "Bottesini", year_composed: 1840, length: "15 minutes")

List.create(list_title: "Liz's List", user: liz )
List.create(list_title: "Kate's List", user: kate )

MusicList.create(list_id:1, music_id:1, rating:8)