class CannabisPlantsController < ApplicationController

    get '/cannabis_plant' do
        if logged_in?
            @cannabis_plant = Cannabis_Plant.all
            erb :"cannabis_plant/index"
        else
            redirect "/login"
        end
    end

    get '/cannabis_plant/new' do
        @users = User.all
        erb :"cannabis_plant/new"
    end

    get '/cannabis_plant/:id/edit' do
        @users = User.all
        @cannabis_plant = Cannabis_Plant.find_by_id(params[:id])
        if @cannabis_plant.user.id == current_user.id
            erb :"cannabis_plant/edit"
        else
            redirect "/cannabis_plant"
        end
    end

    patch '/cannabis_plant/:id' do
        @cannabis_plant = Cannabis_Plant.find_by_id(params[:id])
        params.delete("_method")
        if @cannabis_plant.update(params)
            redirect "/cannabis_plant/#{@cannabis_plant.id}"
        else
            redirect "/cannabis_plant/#{@cannabis_plant.id}/edit"
        end
    end

    get '/cannabis_plant/:id' do
       @cannabis_plant = Cannabis_Plant.find_by_id(params[:id])
       erb :"cannabis_plant/show"
    end

    post '/cannabis_plant' do
        @cannabis_plant = Cannabis_Plant.new(params)
            if @cannabis_plant.save
                redirect "/cannabis_plant/#{@cannabis_plant.id}"
            else
                redirect "/cannabis_plant/new"
            end
    end

    delete '/cannabis_plant/:id' do
        @cannabis_plant = Cannabis_Plant.find_by_id(params[:id])
        if @cannabis_plant.user.id == current_user.id
            @cannabis_plant.delete
            redirect "/cannabis_plant"
        else
            redirect "/cannabis_plant"
        end
    end  
end