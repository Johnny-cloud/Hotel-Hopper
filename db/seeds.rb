puts "Seeding data ............................"

doe = Customer.create!(name: "Doe", email:"doe@gmail.com", password: "doe", password_confirmation: "doe")


# Hotels 
transilvania = Hotel.create!(name: "Transilvania", image: "https://plus.unsplash.com/premium_photo-1661929519129-7a76946c1d38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWwlMjBoYWxsfGVufDB8fDB8fHww&w=1000&q=80")

trans_room_1 = Room.create!(hotel: transilvania,room_num: 1, available: 10, room_type: "single", image: "https://images.unsplash.com/flagged/photo-1556438758-8d49568ce18e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2luZ2xlJTIwcm9vbXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80")
trans_room_2 = Room.create!(hotel: transilvania,room_num: 2, available: 10, room_type: "double", image: "https://www.hotel7dublin.com/wp-content/uploads/Hotel-7-double-bedroom-1000x500_c.jpg")
trans_room_3 = Room.create!(hotel: transilvania,room_num: 3, available: 10, room_type: "twin", image: "https://image-tc.galaxy.tf/wijpeg-3aprtv71u8gzdckzyi1xkwr5/deluxe-twin_wide.jpg?crop=0%2C98%2C1920%2C1080")
trans_room_4 = Room.create!(hotel: transilvania,room_num: 4, available: 10, room_type: "suite", image: "https://w0.peakpx.com/wallpaper/244/784/HD-wallpaper-luxury-suite-hotel-honeymoon-bungalow-bedroom-bed-sea-suite-lagoon-beach-pink-blue.jpg")
trans_room_5 = Room.create!(hotel: transilvania,room_num: 5, available: 10, room_type: "tripple", image: "https://www.maracaibohotel.it/images/gallery-int/tripla-standard-normal/hma_0024_23349.jpg")
trans_room_6 = Room.create!(hotel: transilvania,room_num: 6, available: 10, room_type: "quad", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-triple-superior-home-1.jpg")
trans_room_7 = Room.create!(hotel: transilvania,room_num: 7, available: 10, room_type: "King", image: "https://e1.pxfuel.com/desktop-wallpaper/417/896/desktop-wallpaper-best-5-hotel-king-on-hip-hotel- = room.jpg")
trans_room_8 = Room.create!(hotel: transilvania,room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/12/RR-Standard-2-Queen.jpg")

happy_days_inn = Hotel.create!(name: "Happy Days Inn", image: "https://watermark.lovepik.com/photo/20211120/large/lovepik-the-hotel-lobby-picture_500420418.jpg")

happy_days_inn_1 = Room.create!(hotel:happy_days_inn, room_num: 1, available: 10, room_type: "single", image: "https://atlantic-parkhotel.de/images/Classic-EZ-Stadt-1920-x-1080.jpg")
happy_days_inn_2 = Room.create!(hotel:happy_days_inn, room_num: 2, available: 10, room_type: "double", image: "https://www.shutterstock.com/shutterstock/videos/15407836/thumb/1.jpg?ip=x480")
happy_days_inn_3 = Room.create!(hotel:happy_days_inn, room_num: 3, available: 10, room_type: "twin", image: "https://c1.wallpaperflare.com/preview/212/691/791/room-hotel-bed-double-bed.jpg")
happy_days_inn_4 = Room.create!(hotel:happy_days_inn, room_num: 4, available: 10, room_type: "suite", image: "https://c4.wallpaperflare.com/wallpaper/844/53/319/miami-florida-hotel-room-wallpaper-preview.jpg")
happy_days_inn_5 = Room.create!(hotel:happy_days_inn, room_num: 5, available: 10, room_type: "tripple", image: "https://www.centralhoteldonegal.com/wp-content/uploads/2020/07/triple.jpg")
happy_days_inn_6 = Room.create!(hotel:happy_days_inn, room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/159/802/513/room-interior-home-house-wallpaper-preview.jpg")
happy_days_inn_7 = Room.create!(hotel:happy_days_inn, room_num: 7, available: 10, room_type: "King", image: "https://c4.wallpaperflare.com/wallpaper/1024/7/759/bed-interior-chair-bedroom-wallpaper-preview.jpg")
happy_days_inn_8 = Room.create!(hotel:happy_days_inn, room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/04/RR-Queen-Bedtrans_room_1 = room.jpg")  

comfort_deluxe = Hotel.create!(name: "Comfort Deluxe Hotel", image: "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8fDA%3D&w=1000&q=80")

comfort_deluxe_1 = Room.create!(hotel: comfort_deluxe, room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
comfort_deluxe_2 = Room.create!(hotel: comfort_deluxe, room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-comfort_deluxe_1 = room.jpg")
comfort_deluxe_3 = Room.create!(hotel: comfort_deluxe, room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
comfort_deluxe_4 = Room.create!(hotel: comfort_deluxe, room_num: 4, available: 10, room_type: "suite", image: "https://img.freepik.com/free-photo/luxury-bedroom-suite-resort-high-rise-hotel-with-working-table_105762-1783.jpg")
comfort_deluxe_5 = Room.create!(hotel: comfort_deluxe, room_num: 5, available: 10, room_type: "tripple", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-Standart-home-2.jpg")
comfort_deluxe_6 = Room.create!(hotel: comfort_deluxe, room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/344/30/405/sofa-design-interior-design-apartment-wallpaper-preview.jpg")
comfort_deluxe_7 = Room.create!(hotel: comfort_deluxe, room_num: 7, available: 10, room_type: "King", image: "https://cdn.cbeditz.com/cbeditz/preview/king-bed-room-hd-background-wallpaper-download-11636386616ezcse1ctl9.jpg")
comfort_deluxe_8 = Room.create!(hotel: comfort_deluxe, room_num: 8, available: 10, room_type: "queen", image: "https://image-tc.galaxy.tf/wijpeg-b391ug7m67k3acykl7pgynkbf/newyorkhotel-dreamdowntown-dreamhotels-bq.jpg")

the_roost = Hotel.create!(name: "The Roost", image: "https://c4.wallpaperflare.com/wallpaper/360/515/601/night-in-las-vegas-bellagio-luxury-hotel-casino-hd-wallpapers-for-mobile-phones-laptops-and-pc-1920%C3%971080-wallpaper-preview.jpg")

the_roost_1 = Room.create!(hotel: the_roost, room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
the_roost_2 = Room.create!(hotel: the_roost, room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-room.jpg")
the_roost_3 = Room.create!(hotel: the_roost, room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
the_roost_4 = Room.create!(hotel: the_roost, room_num: 4, available: 10, room_type: "suite", image: "https://w0.peakpx.com/wallpaper/244/784/HD-wallpaper-luxury-suite-hotel-honeymoon-bungalow-bedroom-bed-sea-suite-lagoon-beach-pink-blue.jpg")
the_roost_5 = Room.create!(hotel: the_roost, room_num: 5, available: 10, room_type: "tripple", image: "https://www.maracaibohotel.it/images/gallery-int/tripla-standard-normal/hma_0024_23349.jpg")
the_roost_6 = Room.create!(hotel: the_roost, room_num: 6, available: 10, room_type: "quad", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-triple-superior-home-1.jpg")
the_roost_7 = Room.create!(hotel: the_roost, room_num: 7, available: 10, room_type: "King", image: "https://e1.pxfuel.com/desktop-wallpaper/417/896/desktop-wallpaper-best-5-hotel-king-on-hip-hotel-room.jpg")
the_roost_8 = Room.create!(hotel: the_roost, room_num: 8, available: 10, room_type: "queen", image: "https://www.redrockresort.com/wp-content/uploads/2020/12/RR-Standard-2-Queen.jpg")

palace_inn = Hotel.create!(name: "Palace Inn", image: "https://c4.wallpaperflare.com/wallpaper/624/380/1000/life-resort-hotel-resort-hotel-wallpaper-preview.jpg")

palace_inn_1 = Room.create!(hotel: palace_inn, room_num: 1, available: 10, room_type: "single", image: "https://c0.wallpaperflare.com/preview/195/45/103/apartment-bed-bedroom-chair.jpg")
palace_inn_2 = Room.create!(hotel: palace_inn, room_num: 2, available: 10, room_type: "double", image: "https://c1.wallpaperflare.com/preview/967/606/545/bed-double-bed-hotel-room.jpg")
palace_inn_3 = Room.create!(hotel: palace_inn, room_num: 3, available: 10, room_type: "twin", image: "https://www.hotelbotanique.com/userfiles/thumbs/3/clasic-twin-room_16360256770052_726x454_ttt_90.webp")
palace_inn_4 = Room.create!(hotel: palace_inn, room_num: 4, available: 10, room_type: "suite", image: "https://img.freepik.com/free-photo/luxury-bedroom-suite-resort-high-rise-hotel-with-working-table_105762-1783.jpg")
palace_inn_5 = Room.create!(hotel: palace_inn, room_num: 5, available: 10, room_type: "tripple", image: "https://www.hiddenhills.com.tr/wp-content/uploads/2022/09/Oda-Standart-home-2.jpg")
palace_inn_6 = Room.create!(hotel: palace_inn, room_num: 6, available: 10, room_type: "quad", image: "https://c4.wallpaperflare.com/wallpaper/344/30/405/sofa-design-interior-design-apartment-wallpaper-preview.jpg")
palace_inn_7 = Room.create!(hotel: palace_inn, room_num: 7, available: 10, room_type: "King", image: "https://cdn.cbeditz.com/cbeditz/preview/king-bed-room-hd-background-wallpaper-download-11636386616ezcse1ctl9.jpg")
palace_inn_8 = Room.create!(hotel: palace_inn, room_num: 8, available: 10, room_type: "queen", image: "https://image-tc.galaxy.tf/wijpeg-b391ug7m67k3acykl7pgynkbf/newyorkhotel-dreamdowntown-dreamhotels-bq.jpg")

# Customers
john = Customer.create!(name: "John", email:"john@gmail.com", password: "doe", password_confirmation: "doe")
mercy = Customer.create!(name: "Mercy", email:"mercy@gmail.com", password: "doe", password_confirmation: "doe")
jane = Customer.create!(name: "Jane", email:"jane@gmail.com", password: "doe", password_confirmation: "doe")
jacob = Customer.create!(name: "Jacob", email:"jacob@gmail.com", password: "doe", password_confirmation: "doe")
hilda = Customer.create!(name: "Hilda", email:"hilda@gmail.com", password: "doe", password_confirmation: "doe")

john.rooms << trans_room_1
Booking.create!(customer: john, room: trans_room_1, date_in: "7/6/23", date_out: "7/20/23")
john.rooms << happy_days_inn_1
Booking.create!(customer: john, room: happy_days_inn_1, date_in: "7/6/23", date_out: "7/20/23")
john.rooms << palace_inn_1
Booking.create!(customer: john, room: palace_inn_1, date_in: "7/6/23", date_out: "7/20/23")
john.rooms << comfort_deluxe_1
Booking.create!(customer: john, room: comfort_deluxe_1, date_in: "7/6/23", date_out: "7/20/23")
john.rooms << the_roost_1
Booking.create!(customer: john, room: the_roost_1, date_in: "7/6/23", date_out: "7/20/23")

mercy.rooms << trans_room_2
Booking.create!(customer: mercy, room: trans_room_2, date_in: "7/6/23", date_out: "7/20/23")
mercy.rooms << happy_days_inn_2
Booking.create!(customer: mercy, room: happy_days_inn_2, date_in: "7/6/23", date_out: "7/20/23")
mercy.rooms << palace_inn_2
Booking.create!(customer: mercy, room: palace_inn_2, date_in: "7/6/23", date_out: "7/20/23")
mercy.rooms << comfort_deluxe_2
Booking.create!(customer: mercy, room: comfort_deluxe_2, date_in: "7/6/23", date_out: "7/20/23")
mercy.rooms << the_roost_2
Booking.create!(customer: mercy, room: the_roost_2, date_in: "7/6/23", date_out: "7/20/23")

jane.rooms << trans_room_3
Booking.create!(customer: jane, room: trans_room_3, date_in: "7/6/23", date_out: "7/20/23")
jane.rooms << happy_days_inn_3
Booking.create!(customer: jane, room: happy_days_inn_3, date_in: "7/6/23", date_out: "7/20/23")
jane.rooms << palace_inn_3
Booking.create!(customer: jane, room: palace_inn_3, date_in: "7/6/23", date_out: "7/20/23")
jane.rooms << comfort_deluxe_3
Booking.create!(customer: jane, room: comfort_deluxe_3, date_in: "7/6/23", date_out: "7/20/23")
jane.rooms << the_roost_3
Booking.create!(customer: jane, room: the_roost_3, date_in: "7/6/23", date_out: "7/20/23")

jacob.rooms << trans_room_4
Booking.create!(customer: jacob, room: trans_room_4, date_in: "7/6/23", date_out: "7/20/23")
jacob.rooms << happy_days_inn_4
Booking.create!(customer: jacob, room: happy_days_inn_4, date_in: "7/6/23", date_out: "7/20/23")
jacob.rooms << palace_inn_4
Booking.create!(customer: jacob, room: palace_inn_4, date_in: "7/6/23", date_out: "7/20/23")
jacob.rooms << comfort_deluxe_4
Booking.create!(customer: jacob, room: comfort_deluxe_4, date_in: "7/6/23", date_out: "7/20/23")
jacob.rooms << the_roost_4
Booking.create!(customer: jacob, room: the_roost_4, date_in: "7/6/23", date_out: "7/20/23")

hilda.rooms << trans_room_5
Booking.create!(customer: hilda, room: trans_room_5, date_in: "7/6/23", date_out: "7/20/23")
hilda.rooms << happy_days_inn_5
Booking.create!(customer: hilda, room: happy_days_inn_5, date_in: "7/6/23", date_out: "7/20/23")
hilda.rooms << palace_inn_5
Booking.create!(customer: hilda, room: palace_inn_5, date_in: "7/6/23", date_out: "7/20/23")
hilda.rooms << comfort_deluxe_5
Booking.create!(customer: hilda, room: comfort_deluxe_5, date_in: "7/6/23", date_out: "7/20/23")
hilda.rooms << the_roost_5
Booking.create!(customer: hilda, room: the_roost_5, date_in: "7/6/23", date_out: "7/20/23")

Admin.create!(email: "admin@gmail.com", password: "admin123", password_confirmation: "admin123")
Admin.create!(email: "admin2@gmail.com", password: "admin123", password_confirmation: "admin123")

Review.create(title: "They were extremely accommodating and allowed us to check in early at like 10am. We got to hotel super early and I didn’t wanna wait. So this was a big plus. The sevice was exceptional as well. Would definitely send a friend there.")
Review.create(title: "I had a wonderful experience at the (HN). Every staff member I encountered, from the valet to the check- in to the cleaning staff were delightful and eager to help! Thank you! Will recommend to my colleagues")
Review.create(title: ". The staff at this property are all great! They all go above and beyond to make your stay comfortable. Please (HN) give your staff awards!")
Review.create(title: "Took advantage of the downtown location to walk to dinner, check out a couple galleries, and have drinks. It was great. Service top notch as always. Bed comfort can not be beat.")
Review.create(title: "The rooms were clean, very comfortable, and the staff was amazing. They went over and beyond to help make our stay enjoyable. I highly recommend this hotel for anyone visiting downtown (L).")
Review.create(title: "This is the perfect hotel for a weekend getaway in (L). The downtown area on Main Street is a best kept secret and the (HN) offers everything you need if you don’t feel like venturing out")

puts "...............................done seeding"