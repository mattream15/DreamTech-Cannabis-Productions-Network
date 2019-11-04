class CannabisPlantsController < ApplicationController

    get '/cannabis_plants' do
        if logged_in?
            @cannabis_plant = CannabisPlant.all
            erb :"cannabis_plants/index"
        else
            redirect "/login"
        end
    end

    get '/cannabis_plants/new' do
        @users = User.all
        @cannabis_plants = CannabisPlant.all
        erb :"cannabis_plants/new"
    end

    get '/cannabis_plants/:id/edit' do
        @cannabis_plant = CannabisPlant.find_by_id(params[:id])
        if @cannabis_plant.user.id == current_user.id
            erb :"cannabis_plants/edit"
        else
            redirect "/cannabis_plant"
        end
    end

    patch '/cannabis_plants/:id' do
        @cannabis_plant = CannabisPlant.find_by_id(params[:id])
        params.delete("_method")
        if @cannabis_plant.update(params)
            redirect "/cannabis_plants/#{@cannabis_plant.id}"
        else
            redirect "/cannabis_plants/#{@cannabis_plant.id}/edit"
        end
    end

    get '/cannabis_plants/:id' do
       @cannabis_plant = CannabisPlant.find_by_id(params[:id])
       erb :"cannabis_plants/show"
    end

    post '/cannabis_plants' do
        cannabis_plant = CannabisPlant.new(params)
            if cannabis_plant.save
                redirect "/cannabis_plants/#{cannabis_plant.id}"
            else
                redirect "/cannabis_plants/new"
            end
    end

    delete '/cannabis_plants/:id' do
        @cannabis_plant = CannabisPlant.find_by_id(params[:id])
        if @cannabis_plant.user.id == current_user.id
            @cannabis_plant.delete
            redirect "/cannabis_plant"
        else
            redirect "/cannabis_plant"
        end
    end  
end