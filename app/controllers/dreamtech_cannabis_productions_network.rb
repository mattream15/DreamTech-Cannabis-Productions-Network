class DreamTechCannabisProductionsNetworkController < ApplicationController

    get '/dreamtech_cannabis_productions_network' do
        if logged_in?
            @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.all
            erb :"dreamtech_cannabis_productions_network/index"
        else
            redirect "/login"
        end
    end

    get '/dreamtech_cannabis_productions_network/new' do
        @users = User.all
        erb :"dreamtech_cannabis_productions_network/new"
    end

    get '/dreamtech_cannabis_productions_network/:id/edit' do
        @users = User.all
        @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.find_by_id(params[:id])
        if @dreamtech_cannabis_productions_network.user.id == current_user.id
            erb :"dreamtech_cannabis_productions_network/edit"
        else
            redirect "/dreamtech_cannabis_productions_network"
        end
    end

    patch '/dreamtech_cannabis_productions_network/:id' do
        @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.find_by_id(params[:id])
        params.delete("_method")
        if @dreamtech_cannabis_productions_network.update(params)
            redirect "/dreamtech_cannabis_productions_network/#{@crop_production.id}"
        else
            redirect "/dreamtech_cannabis_productions_network/#{@dreamtech_cannabis_productions_network.id}/edit"
        end
    end

    get '/dreamtech_cannabis_productions_network/:id' do
       @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.find_by_id(params[:id])
       erb :"dreamtech_cannabis_productions_network/show"
    end

    post '/dreamtech_cannabis_productions_network' do
        @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.new(params)
            if @dreamtech_cannabis_productions_network.save
                redirect "/dreamtech_cannabis_productions_network/#{@dreamtech_cannabis_productions_network.id}"
            else
                redirect "/dreamtech_cannabis_productions_network/new"
            end
    end

    delete '/dreamtech_cannabis_productions_network/:id' do
        @dreamtech_cannabis_productions_network = DreamTech_Cannabis_Productions_Network.find_by_id(params[:id])
        if @dreamtech_cannabis_productions_network.user.id == current_user.id
            @dreamtech_cannabis_productions_network.delete
            redirect "/dreamtech_cannabis_productions_network"
        else
            redirect "/dreamtech_cannabis_productions_network"
        end
    end  
end