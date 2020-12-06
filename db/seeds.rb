# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dressyourface = Stylist.create ({username: "dressyourface", password_digest: "1111"})
makeupshayla = Stylist.create ({username: "makeupshayla", password_digest: "1111"})
amrezy = Stylist.create ({username: "amrezy", password_digest: "1111"})
makeupbymario = Stylist.create ({username: "makeupbymario", password_digest: "1111"})
huda = Stylist.create ({username: "huda", password_digest: "1111"})

kim = Client.create ({name: "Kim Kardashian", bday_month: "October"})
khloe = Client.create ({name: "Khloe Kardashian", bday_month: "June"})
scott = Client.create ({name: "Scott Disick", bday_month: "May"})
kylie = Client.create ({name: "Kylie Jenner", bday_month: "August"})
kanye = Client.create ({name: "Kanye West", bday_month: "June"})