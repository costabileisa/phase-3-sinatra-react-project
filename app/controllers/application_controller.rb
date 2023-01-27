class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/dogs" do
    dogs = Dog.all
    dogs.to_json(include: :breed)
  end

  get "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.to_json
  end

  post "/dogs" do
    breed = Breed.find_by(breed: params[:breed])
    if Dog.find(params[:id])
        ["This dog already exists!"].to_json
    else
        dog = Dog.create(
            name: params[:name],
            breed_id: breed.id,
            img_url: params[:img_url],
            img_description: params[:img_description],
            likes: 0
        )
        dog_to_send = dog.concat(breed)
        dog_to_send.to_json
    end
  end

  patch "/dogs/:id" do
    dog = Dog.find(params[:id])
    likes = dog.likes
    dog.update(
        likes: likes += 1
    )
    dog.to_json
  end

  delete "/dogs/:id" do
    dog = Dog.find(params[:id])
    dog.destroy
    dog.to_json
  end

end
