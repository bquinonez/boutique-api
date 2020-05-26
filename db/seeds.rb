# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Cart.destroy_all
Order.destroy_all
CartItem.destroy_all
OrderItem.destroy_all
Item.destroy_all
Category.destroy_all


bihelca = User.create(username: "bihelca", email: "bihelca@gmail.com", password:"password")
betty = User.create(username: "betty", email: "bettyq@gmail.com", password:"password")

cart1 = Cart.create(user: bihelca)
cart2 = Cart.create(user: betty)

tunic = Category.create(name: "tunic")
dress = Category.create(name: "dress")
jumpsuit = Category.create(name: "jumpsuit")
bottom = Category.create(name: "bottom")
top = Category.create(name: "top")
wedding = Category.create(name: "wedding")


item1 = Item.create(
  name: "KHLOE",
  color: "Brown",
  gender: "female",
  size:["one-size"],
  description: "One of Three styles featured in the #KardashianCollection! The bold frame is perfect for summer.",
  image: "https://static.wixstatic.com/media/73b83e_a9d5f6f29bbb4d49a61f25b7ca61f9d8~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_a9d5f6f29bbb4d49a61f25b7ca61f9d8~mv2.jpg",
  price: 23,
  category: tunic,
  designer: "N/A"
  )

 

item2 = Item.create(
 name: "KIM K",
 color: "Black",
 gender: "female",
 size:["one-size"],
 description: "One of Three styles featured in the #KardashianCollection! Bold look.",
 image:"https://static.wixstatic.com/media/73b83e_343388418ac14a2494d0a73ea2752f1f~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_343388418ac14a2494d0a73ea2752f1f~mv2.jpg",
 price: 21,
 category: tunic,
 designer: "N/A"
)

item3 = Item.create(
  name: "KOURTNEY",
  color: "Brown",
  gender: "female",
  size:["one-size"],
  description: "One of Three styles featured in the #KardashianCollection!",
  image:"https://static.wixstatic.com/media/73b83e_34fa5ef91b2f4504a5f6076327505a5a~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_34fa5ef91b2f4504a5f6076327505a5a~mv2.jpg",
  price: 23,
  category: dress,
  designer: "N/A"
)

item4 = Item.create(
  name: "SUNRISE",
  color: "Yellow",
  gender: "female",
  size:["one-size"],
  description: "Clear frame, good for indoor and outdoor.",
  image:"https://static.wixstatic.com/media/73b83e_a8b81024408e42559a57d33ed2e8f5de~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_a8b81024408e42559a57d33ed2e8f5de~mv2.jpg",
  price: 17,
  category: dress,
  designer: "N/A"
)


item5 = Item.create(
  name: "PINK VOGUE",
  color: "Pink",
  gender: "female",
  size:["one-size"],
  description: "Clear frame, good for indoor and outdoor.",
  image:"https://static.wixstatic.com/media/73b83e_b0f7413c2aaa44b28aff0e4949da4253~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_b0f7413c2aaa44b28aff0e4949da4253~mv2.jpg",
  price: 17,
  category: tunic,
  designer: "N/A"
)



item6 = Item.create(
  name: "SUNSET",
  color: "Orange",
  gender: "female",
  size:["one-size"],
  description: "Clear frame, good for indoor and outdoor.",
  image:"https://static.wixstatic.com/media/73b83e_34692364384b4756a723f87b2203e436~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_34692364384b4756a723f87b2203e436~mv2.jpg",
  price: 17,
  category: top,
  designer: "N/A"
)

item7 = Item.create(
 name: "A LA MODE RED",
 color: "Red",
 gender: "female",
 size:["one-size"],
 description: "Gold accents on frame with red lens. Good for indoor and outdoor.",
 image:"https://static.wixstatic.com/media/73b83e_7c6d7f02941a4bb383b800ff28c41f39~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_7c6d7f02941a4bb383b800ff28c41f39~mv2.jpg",
 price: 20,
 category: jumpsuit,
 designer: "N/A"
)

item8 = Item.create(
  name: "CLEAR VIEW",
  color: "Clear",
  gender: "female",
  size:["one-size"],
  description: "Clear frame, good for indoor and outdoor.",
  image: "https://static.wixstatic.com/media/73b83e_b4bca0700f5a4b8fb62463fde94e07f6~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_b4bca0700f5a4b8fb62463fde94e07f6~mv2.jpg",
  price: 17,
  category: jumpsuit,
  designer: "N/A"
)

item9 = Item.create(
  name: "A LA MODE MUSTARD",
  color: "Yellow",
  gender: "female",
  size:["one-size"],
  description: "Personally, this style is one of our Favorties!",
  image:"https://static.wixstatic.com/media/73b83e_dd49535384834fd38bacc790c20bb002~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_dd49535384834fd38bacc790c20bb002~mv2.jpg",
  price: 20,
  category: jumpsuit,
  designer: "N/A"
)

item10 = Item.create(
  name: "CHAMPAGNE BROWN",
  color: "Brown",
  gender: "female",
  size:["one-size"],
  description: "Tones of brown for the summer! Pairs well with tanned skin.",
  image:"https://static.wixstatic.com/media/73b83e_31a71f50c6cb45f387363811a1fc76a3~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_31a71f50c6cb45f387363811a1fc76a3~mv2.jpg",
  price: 18,
  category: jumpsuit,
  designer: "N/A"
)



item11 = Item.create(
 name: "HOLLYWOOD RED",
 color: "Red",
 gender: "female",
 size:["one-size"],
 description: "Firey look ready for the summer heat!",
 image:"https://static.wixstatic.com/media/73b83e_d3a9fd4cec37404b9bd59a4b9b8d25f8~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_d3a9fd4cec37404b9bd59a4b9b8d25f8~mv2.jpg",
 price: 18,
 category: wedding,
 designer: "N/A"
)


item12 = Item.create(
 name: "ROSE",
 color: "Pink",
 gender: "female",
 size:["one-size"],
 description: "Sweet like champagne. Get the flirty look ready for any heat wave.",
 image:"https://static.wixstatic.com/media/73b83e_46ce7db2324d41f0830cf031eb7baf55~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_46ce7db2324d41f0830cf031eb7baf55~mv2.jpg",
 price: 18,
 category: wedding,
 designer: "N/A"
  )


  item12 = Item.create(
   name: "BLACK VINTAGE",
   color: "Black",
   gender: "female",
   size:["one-size"],
   description: "Sweet Audrey Hepburn vintage vibes.",
   image:"https://static.wixstatic.com/media/73b83e_d0247a5261fc4be383ff5a4fcd1721c6~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_d0247a5261fc4be383ff5a4fcd1721c6~mv2.jpg",
   price: 18,
   category: wedding,
   designer: "N/A"
    )


  item13 = Item.create(
   name: "WHITE VINTAGE",
   color: "White",
   gender: "female",
   size:["one-size"],
   description: "Sweet Audrey Hepburn vintage vibes. White frame with pink toned lenses.",
   image:"https://static.wixstatic.com/media/73b83e_f2cf9da40f7544ca8410fec13934174f~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_f2cf9da40f7544ca8410fec13934174f~mv2.jpg",
   price: 18,
   category: wedding,
   designer: "N/A"
    )



  item14 = Item.create(
   name: "FRENCH KISS",
   color: "Red",
   gender: "female",
   size:["one-size"],
   description: "Red frames with red toned lenses.",
   image:"https://static.wixstatic.com/media/73b83e_3c13db392f1546c9867414cac0e19b29~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_3c13db392f1546c9867414cac0e19b29~mv2.jpg",
   price: 19,
   category: wedding,
   designer: "N/A"
    )


  item16 = Item.create(
   name: "RED VOGUE",
   color: "Red",
   gender: "female",
   size:["one-size"],
   description: "Red frames with red toned lenses.",
   image:"https://static.wixstatic.com/media/73b83e_009725090e864059a01820525ae7b6ac~mv2.jpg/v1/fill/w_584,h_389,al_c,q_80,usm_0.66_1.00_0.01/73b83e_009725090e864059a01820525ae7b6ac~mv2.jpg",
   price: 17,
   category: top,
   designer: "N/A"
    )


  item16 = Item.create(
   name: "NFINITE",
   color: "Clear",
   gender: "female",
   size:["one-size"],
   description: "Clear frames with reflective lenses for a show stopping look.",
   image:"https://static.wixstatic.com/media/73b83e_b74e1906b4804b7a8924c187ffc3516a~mv2.jpg/v1/fill/w_612,h_408,al_c,q_80,usm_0.66_1.00_0.01/73b83e_b74e1906b4804b7a8924c187ffc3516a~mv2.jpg",
   price: 25,
   category: top,
   designer: "N/A"
    )


item17 = Item.create(
 name: "CRYSTAL CLEAR",
 color: "Clear",
 gender: "female",
 size:["one-size"],
 description: "Clear lens and frame.",
 image:"https://static.wixstatic.com/media/73b83e_2dbfa7504d544202814ff32a028c4273~mv2.jpg/v1/fill/w_612,h_408,al_c,q_80,usm_0.66_1.00_0.01/73b83e_2dbfa7504d544202814ff32a028c4273~mv2.jpg",
 price: 20,
 category: bottom,
 designer: "N/A"
  )



cartItem1 = CartItem.create(cart: cart1, item: item1, quantity: 1)
# review1 = Review.create(item: item1, user: saima, comment: "love this dress", rating: 3)