Stylist.destroy_all
Client.destroy_all
Appointment.destroy_all

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

Appointment.create([
{appointment_datetime: DateTime.new(2020, 10, 22, 19, 00, 0), service: "Chest Wax", client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 9, 24, 18, 00, 0), service: "Pedicure", client: kim, stylist: huda},
{appointment_datetime: DateTime.new(2020, 11, 11, 11, 00, 0), service: "Manicure", client: khloe, stylist: dressyourface},
{appointment_datetime: DateTime.new(2020, 02, 14, 17, 00, 0), service: "Makeup", client: kylie, stylist: huda},
{appointment_datetime: DateTime.new(2020, 10, 10, 19, 00, 0), service: "Chest Wax", client: kanye, stylist: makeupbymario},
{appointment_datetime: DateTime.new(2020, 10, 31, 14, 00, 0), service: "Makeup", client: kim, stylist: makeupshayla},
{appointment_datetime: DateTime.new(2020, 07, 29, 16, 00, 0), service: "Massage", client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 11, 9, 19, 00, 0), service: "Haircut", client: kim, stylist: huda},
])