Stylist.destroy_all
Client.destroy_all
Appointment.destroy_all
Service.destroy_all

dressyourface = Stylist.create ({username: "dressyourface", password: "1111"})
makeupshayla = Stylist.create ({username: "makeupshayla", password: "1111"})
amrezy = Stylist.create ({username: "amrezy", password: "1111"})
makeupbymario = Stylist.create ({username: "makeupbymario", password: "1111"})
huda = Stylist.create ({username: "huda", password: "1111"})

kim = Client.create ({name: "Kim Kardashian"})
khloe = Client.create ({name: "Khloe Kardashian"})
scott = Client.create ({name: "Scott Disick"})
kylie = Client.create ({name: "Kylie Jenner"})
kanye = Client.create ({name: "Kanye West"})


chest_wax = Service.create({name: "Chest Wax"})
botox = Service.create({name: "Botox"})
makeup = Service.create({name: "Makeup"})
lip_filler = Service.create({name: "Lip Filler"})
massage = Service.create({name: "Massage"})




Appointment.create([
{appointment_datetime: DateTime.new(2020, 10, 22, 19, 00, 0), client: scott, stylist: amrezy, service: chest_wax},
{appointment_datetime: DateTime.new(2020, 9, 24, 18, 00, 0),  client: kim, stylist: huda, service: botox},
{appointment_datetime: DateTime.new(2020, 11, 11, 11, 00, 0), client: khloe, stylist: dressyourface, service: makeup},
{appointment_datetime: DateTime.new(2020, 02, 14, 17, 00, 0), client: kylie, stylist: huda, service: makeup},
{appointment_datetime: DateTime.new(2020, 10, 10, 19, 00, 0), client: kanye, stylist: makeupbymario, service: chest_wax},
{appointment_datetime: DateTime.new(2020, 10, 31, 14, 00, 0), client: kim, stylist: makeupshayla, service: botox},
{appointment_datetime: DateTime.new(2020, 07, 29, 16, 00, 0), client: scott, stylist: amrezy, service: chest_wax},
{appointment_datetime: DateTime.new(2020, 11, 9, 19, 00, 0),  client: kim, stylist: huda, service: lip_filler},
{appointment_datetime: DateTime.new(2020, 12, 25, 19, 00, 0), client: kanye, stylist: amrezy, service: chest_wax},
{appointment_datetime: DateTime.new(2020, 12, 31, 16, 00, 0), client: khloe, stylist: makeupshayla, service: lip_filler},
{appointment_datetime: DateTime.new(2020, 12, 31, 19, 00, 0), client: kylie, stylist: dressyourface, service: massage},
{appointment_datetime: DateTime.new(2020, 11, 28, 19, 00, 0), client: scott, stylist: huda, service: chest_wax}
])
