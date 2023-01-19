class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/message" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get "/breeds" do 
    breeds = Breed.all
    breeds.to_json
  end

  get "/breeds/:breed_id" do 
    breed = Breed.find(params[:breed_id])
    breed.to_json
  end

  post "/dogs" do
    breed_id = Breed.find_by(breed: params[:breed]).id
    dog = Dog.create(
        name: params[:name],
        breed_id: breed_id,
        img_url: params[:img_url],
        img_description: params[:img_description]
    )
  end

end
