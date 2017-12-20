# Supplier.create!([
#   {name: "Amazon", email: "Spendallofyourmoneyhere@amazon.com", phone_number: "260-555-1234"},
#   {name: "Drone Warehaus", email: "Wehavedrones@warehaus.com", phone_number: "260-555-2345"},
#   {name: "eBay", email: "buy@ebay.com", phone_number: "260-555-3456"}
# ])
# Drone.create!([
#   {name: "DJI Phantom 2", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera with gimble", price: 750, supplier_id: 2},
#   {name: "DJI Phantom 4", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera with gimble", price: 950, supplier_id: 1},
#   {name: "DJI Mavic Pro", description: "Black, 4 rotors, 1.5mile range, FPV, 4k camera", price: 1200, supplier_id: 3},
#   {name: "DJI Inspire 2", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera, modular landing gear", price: 1200, supplier_id: 2},
#   {name: "Yuneec q500", description: "Black, 4 rotors, 1.5mile range, FPV, 4k camera", price: 700, supplier_id: 3},
#   {name: "Yuneec Typhoon H", description: "Black, 6 rotors, 2.5mile range, FPV, 4k camera", price: 1100, supplier_id: 2},
#   {name: "DJI Spark", description: "White, 4 rotors, 1mile range, FPV, smartphone controller, 4k camera", price: 479, supplier_id: 1},
#   {name: "Syma X5C", description: "White, 4 rotors, 300ft range", price: 37, supplier_id: 2},
#   {name: "Syma X8C", description: "Black, 4 rotors, 500ft range", price: 65, supplier_id: 1}
# ])
# Image.create!([
#   {drone_id: 3, url: "http://dronereview.com/wp-content/uploads/2016/01/phantom-2-8.jpg"},
#   {drone_id: 4, url: "https://i.ytimg.com/vi/TJss99uFZhI/maxresdefault.jpg"},
#   {drone_id: 5, url: "https://9to5mac.files.wordpress.com/2017/03/mavic-litchi.jpg?quality=82&strip=all&strip=all&w=1600&h=1000"},
#   {drone_id: 6, url: "https://i.ytimg.com/vi/qf_-Rvc4FFg/maxresdefault.jpg"},
#   {drone_id: 8, url: "http://www.nextwavetech.com/wp-content/uploads/2015/04/yuneec_q500_typhoon.jpg"},
#   {drone_id: 9, url: "https://assets.pcmag.com/media/images/520533-yuneec-typhoon-h.jpg?thumb=y&width=740&height=416"},
#   {drone_id: 7, url: "https://cdn2.techadvisor.co.uk/cmsdata/features/3659489/dji-spark-release-date-price-hover.jpg"},
#   {drone_id: 1, url: "http://www.symatoys.com/upload/X5C/5.jpg"},
#   {drone_id: 2, url: "https://images-na.ssl-images-amazon.com/images/I/41ktoScX8ML.jpg"}
# ])

# =================================================================================

# Category.create!(name: "1+mile Range")     #1
# Category.create!(name: "4 Rotor")          #2
# Category.create!(name: "6 Rotor")          #3
# Category.create!(name: "FPV")              #4
# Category.create!(name: "4k Camera")        #5
# Category.create!(name: "Standard Camera")  #6

# DroneCategory.create!(drone_id: 1, category_id: 2)
# DroneCategory.create!(drone_id: 1, category_id: 6)
# DroneCategory.create!(drone_id: 2, category_id: 2)
# DroneCategory.create!(drone_id: 2, category_id: 6)
# DroneCategory.create!(drone_id: 3, category_id: 1)
# DroneCategory.create!(drone_id: 3, category_id: 2)
# DroneCategory.create!(drone_id: 3, category_id: 4)
# DroneCategory.create!(drone_id: 3, category_id: 5)
# DroneCategory.create!(drone_id: 4, category_id: 1)
# DroneCategory.create!(drone_id: 4, category_id: 2)
# DroneCategory.create!(drone_id: 4, category_id: 4)
# DroneCategory.create!(drone_id: 4, category_id: 5)
# DroneCategory.create!(drone_id: 5, category_id: 1)
# DroneCategory.create!(drone_id: 5, category_id: 2)
# DroneCategory.create!(drone_id: 5, category_id: 4)
# DroneCategory.create!(drone_id: 5, category_id: 5)
# DroneCategory.create!(drone_id: 6, category_id: 1)
# DroneCategory.create!(drone_id: 6, category_id: 2)
# DroneCategory.create!(drone_id: 6, category_id: 4)
# DroneCategory.create!(drone_id: 6, category_id: 5)
# DroneCategory.create!(drone_id: 7, category_id: 2)
# DroneCategory.create!(drone_id: 7, category_id: 4)
# DroneCategory.create!(drone_id: 8, category_id: 1)
# DroneCategory.create!(drone_id: 8, category_id: 2)
# DroneCategory.create!(drone_id: 8, category_id: 4)
# DroneCategory.create!(drone_id: 8, category_id: 5)
# DroneCategory.create!(drone_id: 9, category_id: 1)
# DroneCategory.create!(drone_id: 9, category_id: 3)
# DroneCategory.create!(drone_id: 9, category_id: 4)
# DroneCategory.create!(drone_id: 9, category_id: 5)

# =================================================================================

# Image.find(1).update(drone_id: 1, url: "http://dronereview.com/wp-content/uploads/2016/01/phantom-2-8.jpg")
# Image.find(2).update(drone_id: 2, url: "https://i.ytimg.com/vi/TJss99uFZhI/maxresdefault.jpg")
# Image.find(3).update(drone_id: 3, url: "https://9to5mac.files.wordpress.com/2017/03/mavic-litchi.jpg?quality=82&strip=all&strip=all&w=1600&h=1000")
# Image.find(4).update(drone_id: 4, url: "https://i.ytimg.com/vi/qf_-Rvc4FFg/maxresdefault.jpg")
# Image.find(5).update(drone_id: 5, url: "http://www.nextwavetech.com/wp-content/uploads/2015/04/yuneec_q500_typhoon.jpg")
# Image.find(6).update(drone_id: 6, url: "https://assets.pcmag.com/media/images/520533-yuneec-typhoon-h.jpg?thumb=y&width=740&height=416")
# Image.find(7).update(drone_id: 7, url: "https://cdn2.techadvisor.co.uk/cmsdata/features/3659489/dji-spark-release-date-price-hover.jpg")
# Image.find(8).update(drone_id: 8, url: "http://www.symatoys.com/upload/X5C/5.jpg")
# Image.find(9).update(drone_id: 9, url: "https://images-na.ssl-images-amazon.com/images/I/41ktoScX8ML.jpg")

# =================================================================================

