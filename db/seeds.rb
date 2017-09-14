Drone.create!([
  {name: "DJI Phantom 2", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera with gimble", image_url: "http://dronereview.com/wp-content/uploads/2016/01/phantom-2-8.jpg", price: 750, supplier_id: 2},
  {name: "DJI Phantom 4", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera with gimble", image_url: "https://i.ytimg.com/vi/TJss99uFZhI/maxresdefault.jpg", price: 950, supplier_id: 1},
  {name: "DJI Mavic Pro", description: "Black, 4 rotors, 1.5mile range, FPV, 4k camera", image_url: "https://9to5mac.files.wordpress.com/2017/03/mavic-litchi.jpg?quality=82&strip=all&strip=all&w=1600&h=1000", price: 1200, supplier_id: 3},
  {name: "DJI Inspire 2", description: "White, 4 rotors, 1.5mile range, FPV, 4k camera, modular landing gear", image_url: "https://i.ytimg.com/vi/qf_-Rvc4FFg/maxresdefault.jpg", price: 1200, supplier_id: 2},
  {name: "Yuneec q500", description: "Black, 4 rotors, 1.5mile range, FPV, 4k camera", image_url: "http://www.nextwavetech.com/wp-content/uploads/2015/04/yuneec_q500_typhoon.jpg", price: 700, supplier_id: 3},
  {name: "Yuneec Typhoon H", description: "Black, 6 rotors, 2.5mile range, FPV, 4k camera", image_url: "https://assets.pcmag.com/media/images/520533-yuneec-typhoon-h.jpg?thumb=y&width=740&height=416", price: 1100, supplier_id: 2},
  {name: "DJI Spark", description: "White, 4 rotors, 1mile range, FPV, smartphone controller, 4k camera", image_url: "https://cdn2.techadvisor.co.uk/cmsdata/features/3659489/dji-spark-release-date-price-hover.jpg", price: 479, supplier_id: 1},
  {name: "Syma X5C", description: "White, 4 rotors, 300ft range", image_url: "http://www.symatoys.com/upload/X5C/5.jpg", price: 37, supplier_id: 2},
  {name: "Syma X8C", description: "Black, 4 rotors, 500ft range", image_url: "https://images-na.ssl-images-amazon.com/images/I/41ktoScX8ML.jpg", price: 65, supplier_id: 1}
])
Image.create!([
  {drone_id: 3, url: "http://dronereview.com/wp-content/uploads/2016/01/phantom-2-8.jpg"},
  {drone_id: 4, url: "https://i.ytimg.com/vi/TJss99uFZhI/maxresdefault.jpg"},
  {drone_id: 5, url: "https://9to5mac.files.wordpress.com/2017/03/mavic-litchi.jpg?quality=82&strip=all&strip=all&w=1600&h=1000"},
  {drone_id: 6, url: "https://i.ytimg.com/vi/qf_-Rvc4FFg/maxresdefault.jpg"},
  {drone_id: 8, url: "http://www.nextwavetech.com/wp-content/uploads/2015/04/yuneec_q500_typhoon.jpg"},
  {drone_id: 9, url: "https://assets.pcmag.com/media/images/520533-yuneec-typhoon-h.jpg?thumb=y&width=740&height=416"},
  {drone_id: 7, url: "https://cdn2.techadvisor.co.uk/cmsdata/features/3659489/dji-spark-release-date-price-hover.jpg"},
  {drone_id: 1, url: "http://www.symatoys.com/upload/X5C/5.jpg"},
  {drone_id: 2, url: "https://images-na.ssl-images-amazon.com/images/I/41ktoScX8ML.jpg"}
])
Supplier.create!([
  {name: "Amazon", email: "Spendallofyourmoneyhere@amazon.com", phone_number: "260-555-1234"},
  {name: "Drone Warehaus", email: "Wehavedrones@warehaus.com", phone_number: "260-555-2345"},
  {name: "eBay", email: "buy@ebay.com", phone_number: "260-555-3456"}
])
