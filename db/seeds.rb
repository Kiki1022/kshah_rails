Stylist.destroy_all
Client.destroy_all
Appointment.destroy_all

dressyourface = Stylist.create ({username: "dressyourface", password: "1111"})
makeupshayla = Stylist.create ({username: "makeupshayla", password: "1111"})
amrezy = Stylist.create ({username: "amrezy", password: "1111"})
makeupbymario = Stylist.create ({username: "makeupbymario", password: "1111"})
huda = Stylist.create ({username: "huda", password: "1111"})

kim = Client.create ({name: "Kim Kardashian", notes: "Picks her nose!"})
khloe = Client.create ({name: "Khloe Kardashian", notes: "Omg she never tips!"})
scott = Client.create ({name: "Scott Disick", notes: "Ughhh smelly feet!🤢"})
kylie = Client.create ({name: "Kylie Jenner", notes: "Always late!"})
kanye = Client.create ({name: "Kanye West", notes: "So rude!"})

Appointment.create([
{appointment_datetime: DateTime.new(2020, 10, 22, 19, 00, 0), service: "Chest Wax", client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 9, 24, 18, 00, 0), service: "Pedicure", client: kim, stylist: huda},
{appointment_datetime: DateTime.new(2020, 11, 11, 11, 00, 0), service: "Manicure", client: khloe, stylist: dressyourface},
{appointment_datetime: DateTime.new(2020, 02, 14, 17, 00, 0), service: "Makeup", client: kylie, stylist: huda},
{appointment_datetime: DateTime.new(2020, 10, 10, 19, 00, 0), service: "Facial", client: kanye, stylist: makeupbymario},
{appointment_datetime: DateTime.new(2020, 10, 31, 14, 00, 0), service: "Botox", client: kim, stylist: makeupshayla},
{appointment_datetime: DateTime.new(2020, 07, 29, 16, 00, 0), service: "Massage", client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 11, 9, 19, 00, 0), service: "Haircut", client: kim, stylist: huda},
{appointment_datetime: DateTime.new(2020, 12, 25, 19, 00, 0), service: "Underarm Wax", client: kanye, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 12, 31, 16, 00, 0), service: "Lip Wax", client: khloe, stylist: makeupshayla},
{appointment_datetime: DateTime.new(2020, 12, 31, 19, 00, 0), service: "Bikini Wax", client: kylie, stylist: dressyourface},
{appointment_datetime: DateTime.new(2020, 11, 28, 19, 00, 0), service: "Ear Wax", client: scott, stylist: huda}
])