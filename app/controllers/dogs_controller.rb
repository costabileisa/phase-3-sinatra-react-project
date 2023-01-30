class DogsController < ApplicationController
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
        dog = Dog.find_or_create_by(
            name: params[:name],
            breed_id: breed.id,
            img_url: params[:img_url],
            img_description: params[:img_description],
            likes: 0
        )
        dog.to_json(include: :breed)
    end

    patch "/dogs/:id" do
        dog = Dog.find(params[:id])
        dog.update(
            likes: params[:likes]
        )
        dog.to_json(include: :breed)
    end
    
    delete "/dogs/:id" do
        dog = Dog.find(params[:id])
        dog.destroy
        dog.to_json
    end
end