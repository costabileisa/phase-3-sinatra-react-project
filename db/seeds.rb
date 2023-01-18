puts "🌱 Seeding spices..."

# Seed your database here
Breed.create(
    {
        breed: "Golden Retriever",
        size: "M"
    }
)
Dog.create([
    {
        img_url: "https://www.lucypetproducts.com/wp-content/uploads/2020/01/Golden4.jpg",
        img_description: "adult golden retriever laying down outside", 
        breed_id: 1
    },
    {
        img_url: "https://s36700.pcdn.co/wp-content/uploads/2019/11/Golden-Puppy_getty82781924-399x600.png",
        img_description: "golden retriever puppy laying down indoors",
        breed_id: 1
    }
])

puts "✅ Done seeding!"
