ShippingType.create name: "Postal parcel", cost: 10.0
ShippingType.create name: "Courier", cost: 20.0

Setting.create desc_menu: " Ladies and gentlemen we will not give up our seasonal joy during this current lockdown. We shouldn't allow anything or anyone to ruin the most magical part of the year! Let's keep positive, hopeful and have faith that Christmas will be as great and as beautiful as it's been every past year! We at By British Design sadly have been forced to close our doors until lock down has ended but we will be re-opening from 10am to 10pm, 7 days a week once allowed! We look forward to welcoming you back to celebrate the fun and festive cheer. In the meantime if you see something that you like in our shop front window or on FB OR INSTA PLEASE call me for a click, collect or postage purchase. Wishing you all love, peace and most importantly health.."
Setting.create email: "info@bybritishdesign.com"

Category.create name: "Christmas"
Category.create name: "Valentine's day"



user = User.create first_name: "Artur",
  last_name: "Drzyzga",
  phone: "123",
  company_name: "Chris Stevens",
  zip_code: "Al10 8DG",
  street: "Holloway 345",
  city: "Lodon",
  admin: true,
  email: "artek.drzyzga@gmail.com",
  password: "kalisia1a",
  password_confirmation: "kalisia1a"
  user.save!

  

#2.times do
 #  Category.create! name: Faker::Hacker.unique.ingverb.capitalize
 #  end
   
   category_ids = Category.pluck(:id) 
   
   print "Product "
  #  4.times do
  #    product = Product.create! name: "#{Faker::Hacker.verb} #{Faker::Hacker.noun}".capitalize,
  #      description: Faker::Hacker.say_something_smart,
  #      category_id: category_ids.sample,
  #    price: Faker::Commerce.unique.price,
  #     code: Faker::Code.unique.asin,
  #     status: 0 ,
  #     quantity: 1
       
  #    product.save
  #    print "."
  #   end
   # puts

   

    

   Product.create name: "Robin on Log swing", description: "Gisela Graham Resin Decoration 7cm - Robin on Log swing", code: "17252", price: 5.99 , quantity: 500 , category_id: 2, status: 0
   Product.create name: "London City Scene", description: "Gisela Graham Glass Bauble 8cm - purple w London City Scene", code: "01796", price: 4.99 , quantity: 2500 , category_id: 2, status: 0
   Product.create name: "Robin on Letter Box/Telephone Box", description: "Gisela Graham 9cm - Robin on Letter Box/Telephone Box", code: "16294", price: 5.99 , quantity: 300 , category_id: 2, status: 0
   Product.create name: "Clip on Bird", description: "Gisela Graham Clip on Bird - Natural Robin", code: "15040", price: 1.99 , quantity: 90 , category_id: 2, status: 0
   Product.create name: " Red Velvet Magnolia", description: "Gisela Graham Pick 20cm - Red Velvet Magnolia", code: "40982", price: 2.99 , quantity: 350 , category_id: 2, status: 0
   Product.create name: "Red Glitter/Fabric Rose", description: "Gisela Graham Clip on Flower 11cm - Red Glitter/Fabric Rose", code: "16044", price: 150 , quantity: 150 , category_id: 2, status: 0
   
   Setting.create email: "info@bybritishdesign.com", desc_menu: "Ladies and gentlemen we will not give up our seasonal joy during this current lockdown. We shouldn't allow anything or anyone to ruin the most magical part of the year! Let's keep positive, hopeful and have faith that Christmas will be as great and as beautiful as it's been every past year! We at By British Design sadly have been forced to close our doors until lock down has ended but we will be re-opening from 10am to 10pm, 7 days a week once allowed! We look forward to welcoming you back to celebrate the fun and festive cheer. In the meantime if you see something that you like in our shop front window or on FB OR INSTA PLEASE call me for a click, collect or postage purchase. Wishing you all love, peace and most importantly health .."