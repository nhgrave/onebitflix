# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ===== Users
User.create name: "Test", email: "teste@teste.com", password: "123456"

# ===== Categories
Category.create name: "Action"
Category.create name: "Comedy"
Category.create name: "Drama"
Category.create name: "Fantasy"
Category.create name: "Horror"
Category.create name: "Romance"
Category.create name: "Sci-Fi"
Category.create name: "War"

# ===== Series
the_witcher = Serie.create title: "The Witcher", category: Category.find_by(name: "Action")
star_trek   = Serie.create title: "Star Trek"  , category: Category.find_by(name: "Sci-Fi")
snowpiercer = Serie.create title: "Snowpiercer", category: Category.find_by(name: "Sci-Fi")

# ===== Movies
the_witcher.movies.create title: "The Witcher - S01E01", episode_number: 1, category: the_witcher.category, video_key: "https://www.youtube.com/watch?v=ndl1W4ltcmg"
the_witcher.movies.create title: "The Witcher - S01E02", episode_number: 2, category: the_witcher.category, video_key: "https://www.youtube.com/watch?v=Rfc14T6Zg-s"
the_witcher.movies.create title: "The Witcher - S01E03", episode_number: 3, category: the_witcher.category, video_key: "https://www.youtube.com/watch?v=j72jXNHoamo"

star_trek.movies.create title: "Star Trek - S01E01", episode_number: 1, category: star_trek.category, video_key: "https://www.youtube.com/watch?v=oWnYtyNKPsA"
star_trek.movies.create title: "Star Trek - S01E02", episode_number: 2, category: star_trek.category, video_key: "https://www.youtube.com/watch?v=nEF88Lcinio"
star_trek.movies.create title: "Star Trek - S01E03", episode_number: 3, category: star_trek.category, video_key: "https://www.youtube.com/watch?v=xU-6px4MNek"

snowpiercer.movies.create title: "Snowpiercer - S01E01", episode_number: 1, category: snowpiercer.category, video_key: "https://www.youtube.com/watch?v=lGcJL6TG5cA"
snowpiercer.movies.create title: "Snowpiercer - S01E02", episode_number: 2, category: snowpiercer.category, video_key: "https://www.youtube.com/watch?v=Mds5PhXzcHI"
snowpiercer.movies.create title: "Snowpiercer - S01E03", episode_number: 3, category: snowpiercer.category, video_key: "https://www.youtube.com/watch?v=wsmxPA3kEPo"

Movie.create title: "Extraction"  , category: Category.find_by(name: "Action"), video_key: "https://www.youtube.com/watch?v=L6P3nI6VnlY"
Movie.create title: "Baby Driver" , category: Category.find_by(name: "Action"), video_key: "https://www.youtube.com/watch?v=D9YZw_X5UzQ"
Movie.create title: "Bird Box"    , category: Category.find_by(name: "Horror"), video_key: "https://www.youtube.com/watch?v=o2AsIXSh2xo"
Movie.create title: "The Dig"     , category: Category.find_by(name: "Drama") , video_key: "https://www.youtube.com/watch?v=JZQz0rkNajo"
Movie.create title: "I Care a Lot", category: Category.find_by(name: "Comedy"), video_key: "https://www.youtube.com/watch?v=D40uHmTSPew"
Movie.create title: "War Dogs"    , category: Category.find_by(name: "War")   , video_key: "https://www.youtube.com/watch?v=Rwh9c_E3dJk"
