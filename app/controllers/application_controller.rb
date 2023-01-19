class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/dogs" do
    dogs = Dog.all
    dogs.to_json
  end

  get "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.to_json
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
    dog.to_json
  end

  post "/breeds" do
    breed = Breed.create(
        breed: params[:breed],
        size: params[:size]
    )
    breed.to_json
  end

end
