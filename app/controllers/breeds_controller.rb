class BreedsController < ApplicationController
    get "/breeds" do
        Breed.all.to_json(include: :dogs)
    end

    get "/breeds/:breed_id" do 
        breed = Breed.find(params[:breed_id])
        breed.to_json
    end

    post "/breeds" do
    breed = Breed.where(
        breed: params[:breed],
        size: params[:size]
    ).first_or_create
    breed.to_json
  end
end