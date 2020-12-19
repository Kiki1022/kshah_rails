Stylist.destroy_all
Client.destroy_all
Appointment.destroy_all
Service.destroy_all

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
{appointment_datetime: DateTime.new(2020, 10, 22, 19, 00, 0), client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 9, 24, 18, 00, 0),  client: kim, stylist: huda},
{appointment_datetime: DateTime.new(2020, 11, 11, 11, 00, 0), client: khloe, stylist: dressyourface},
{appointment_datetime: DateTime.new(2020, 02, 14, 17, 00, 0), client: kylie, stylist: huda},
{appointment_datetime: DateTime.new(2020, 10, 10, 19, 00, 0), client: kanye, stylist: makeupbymario},
{appointment_datetime: DateTime.new(2020, 10, 31, 14, 00, 0), client: kim, stylist: makeupshayla},
{appointment_datetime: DateTime.new(2020, 07, 29, 16, 00, 0), client: scott, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 11, 9, 19, 00, 0),  client: kim, stylist: huda},
{appointment_datetime: DateTime.new(2020, 12, 25, 19, 00, 0), client: kanye, stylist: amrezy},
{appointment_datetime: DateTime.new(2020, 12, 31, 16, 00, 0), client: khloe, stylist: makeupshayla},
{appointment_datetime: DateTime.new(2020, 12, 31, 19, 00, 0), client: kylie, stylist: dressyourface},
{appointment_datetime: DateTime.new(2020, 11, 28, 19, 00, 0), client: scott, stylist: huda}
])

chest_wax = Service.create({name: "Chest Wax", appointment_id: 1})
pedicure = Service.create({name: "Pedicure", appointment_id: 2})
manicure = Service.create({name: "Manicure", appointment_id: 3})
makeup = Service.create({name: "Makeup", appointment_id: 4})
facial = Service.create({name: "Facial", appointment_id: 5})
botox = Service.create({name: "Botox", appointment_id: 6})
massage = Service.create({name: "Massage", appointment_id: 7})
haircut = Service.create({name: "Haircut", appointment_id: 8})
underarm_wax = Service.create({name: "Underarm Wax", appointment_id: 9})
lip_wax = Service.create({name: "Lip Wax", appointment_id: 10})
bikini_wax = Service.create({name: "Bikini Wax", appointment_id: 11})
ear_wax = Service.create({name: "Ear Wax", appointment_id: 12})
