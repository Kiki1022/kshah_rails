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


chest_wax = Service.create({name: "Chest Wax"})
pedicure = Service.create({name: "Pedicure"})
manicure = Service.create({name: "Manicure"})
makeup = Service.create({name: "Makeup"})
facial = Service.create({name: "Facial"})
botox = Service.create({name: "Botox"})
massage = Service.create({name: "Massage"})
haircut = Service.create({name: "Haircut"})
underarm_wax = Service.create({name: "Underarm Wax"})
lip_wax = Service.create({name: "Lip Wax"})
bikini_wax = Service.create({name: "Bikini Wax"})
ear_wax = Service.create({name: "Ear Wax"})


Appointment.create([
{appointment_datetime: DateTime.new(2020, 10, 22, 19, 00, 0), client: scott, stylist: amrezy, service: chest_wax},
{appointment_datetime: DateTime.new(2020, 9, 24, 18, 00, 0),  client: kim, stylist: huda, service: pedicure},
{appointment_datetime: DateTime.new(2020, 11, 11, 11, 00, 0), client: khloe, stylist: dressyourface, service: manicure},
{appointment_datetime: DateTime.new(2020, 02, 14, 17, 00, 0), client: kylie, stylist: huda, service: makeup},
{appointment_datetime: DateTime.new(2020, 10, 10, 19, 00, 0), client: kanye, stylist: makeupbymario, service: facial},
{appointment_datetime: DateTime.new(2020, 10, 31, 14, 00, 0), client: kim, stylist: makeupshayla, service: botox},
{appointment_datetime: DateTime.new(2020, 07, 29, 16, 00, 0), client: scott, stylist: amrezy, service: massage},
{appointment_datetime: DateTime.new(2020, 11, 9, 19, 00, 0),  client: kim, stylist: huda, service: haircut},
{appointment_datetime: DateTime.new(2020, 12, 25, 19, 00, 0), client: kanye, stylist: amrezy, service: underarm_wax},
{appointment_datetime: DateTime.new(2020, 12, 31, 16, 00, 0), client: khloe, stylist: makeupshayla, service: lip_wax},
{appointment_datetime: DateTime.new(2020, 12, 31, 19, 00, 0), client: kylie, stylist: dressyourface, service: bikini_wax},
{appointment_datetime: DateTime.new(2020, 11, 28, 19, 00, 0), client: scott, stylist: huda, service: ear_wax}
])
