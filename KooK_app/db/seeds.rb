# Users
User.create!(role: "admin", username: "b", email: "b@b.com", password: "password")

# Restaurants
# Restaurant(id: integer, name: string, description: text, picture: text, price: text)
# Restaurant.create!(name: "", picture: "", description: "", price: "")
Restaurant.create!(name: "Barnyard", picture: "https://media.timeout.com/images/102800376/750/562/image.jpg", description: "Don’t be fooled into thinking that Barnyard is another me-too joint trying to hitch a ride on the homespun comfort food bandwagon: this Fitzrovia restaurant was created by chef Ollie Dabbous and chums. This no-bookings younger sibling of Michelin-starred Dabbous, which is just down the road, may have swapped industrial luxe for farm chic (oil-barrel seats, distressed wood, a huge tree) and haute cuisine for homestead cooking, but sky-high standards and culinary blazed trails is something they’re keeping in the family. Dishes are of the ‘pimped’ variety: roast beef on toast with horseradish buttermilk, smoked paprika chicken wings, acorn flour waffles.", price: "2000")

Restaurant.create!(name: "REXTAIL", picture: "https://media.timeout.com/images/101265149/750/422/image.jpg", description: "‘Who are all these people?’ it’s tempting to ask as you look around this room full of the international super-rich. For them, dining in a fabulous Mayfair restaurant such as Rextail is an commonplace occurrence. But for the rest of us, this is for special occasions; a well-tuned dining destination that disguises its professionalism behind quirky good looks and bouncy Baltic beats.", price: "5000")
