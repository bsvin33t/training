urls = ["http://i.imgur.com/mCXQSKA.jpg", "http://i.imgur.com/kzBoUhW.jpg", "http://i.imgur.com/vTs4HeP.jpg", "http://i.imgur.com/K5RnkV0.jpg", "http://i.imgur.com/ODdEg6d.jpg?1", "http://i.imgur.com/QRezPDz.jpg"]
names = ["Fox plate", "Back to the future Shirt_", "Tin Chicken", "Darth Vader Toaster", "Bookshelf Couch", "Milkglass Lamp"]
descriptions = ["This little fox with french baguette in her bicycle basket can be a perfect plate for kids and adults to eat their favorite dishes.
Perfect Christmas and New Year gift .
Dishwasher and microwave friendly!",
               "Great Scott! You're never OUTATIME to get great Back to the Future shirts at 80sTees.com! Go back in time with Marty McFly (Michael J. Fox) and Dr. Emmett Brown (Christopher Lloyd) in the 1985 hit, Back To The Future.",
               "Tin Chicken, sits on the top of a shelf doing nothing",
               "This is the toaster made in the likeness of the iconic villain Darth Vader that transforms innocent slices of bread into sinister breakfast tokens of evil.",
               "Bookshelves behind a couch or sofa is a chic way to show it off. Add personal objects and books with colourful spines for a stylish, scholarly touch.",
               "This is a beautiful white milk glass lamp that is in great working condition."]
email = "user@example.com"
seller_id = 42
prices = [70, 60, 30, 50, 80, 40]

names.each_with_index do |name, index|
  Ad.new.save!(name: name,
           description: descriptions[index],
           price: prices[index],
           seller_id: seller_id,
           email: email,
           img_url: urls[index] )
end