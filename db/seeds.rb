ShippingType.create name: "Postal parcel", cost: 10.0
ShippingType.create name: "Courier", cost: 20.0

8.times do
    Category.create! name: Faker::Hacker.unique.ingverb.capitalize
   end
   
   category_ids = Category.pluck(:id) 
   
   print "Product "
     10.times do
       product = Product.create! name: "#{Faker::Hacker.verb} #{Faker::Hacker.noun}".capitalize,
         description: Faker::Hacker.say_something_smart,
         category_id: category_ids.sample,
         price: Faker::Commerce.unique.price,
         code: Faker::Code.unique.asin
       
       product.save
       print "."
     end
     puts