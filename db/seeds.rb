puts "🌱 Seeding spices..."

# Seed your database here
Breed.create([
    {
        breed: "Golden Retriever",
        size: "Medium"
    },
    {
        breed: "Husky",
        size: "Medium"
    },
    {
        breed: "Malamute",
        size: "Large"
    },
    {
        breed: "Chihuahua",
        size: "Small"
    },
    {
        breed: "Border Collie",
        size: "Medium"
    }
])
Dog.create([
    {
        name: "Marley",
        img_url: "https://www.lucypetproducts.com/wp-content/uploads/2020/01/Golden4.jpg",
        img_description: "adult golden retriever laying down outside", 
        likes: 20,
        breed_id: 1
    },
    {
        name: "Jojo",
        img_url: "https://s36700.pcdn.co/wp-content/uploads/2019/11/Golden-Puppy_getty82781924-399x600.png",
        img_description: "golden retriever puppy laying down indoors",
        likes: 12,
        breed_id: 1
    },
    {
        name: "Maya",
        img_url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/smartest-dog-breeds-border-collie-1587750432.jpg",
        img_description: "border collie laying in the grass",
        likes: 30,
        breed_id: 5
    },
    {
        name: "Drax",
        img_url: "https://cdn.britannica.com/02/236302-050-E1F61BB1/Alaskan-Malamute-sled-dog.jpg",
        img_description: "malamute standing outside",
        likes: 5,
        breed_id: 3
    },
    {
        name: "Poppy",
        img_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F08%2F16%2Fgolden-retriever-177213599-2000.jpg",
        img_description: "golden retriever standing up outside",
        likes: 15,
        breed_id: 1
    }
])

puts "✅ Done seeding!"
