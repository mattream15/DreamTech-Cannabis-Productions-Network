class GrowRoomsController < ApplicationController

    get '/grow_rooms' do
        if logged_in?
            @grow_room = GrowRoom.all
            erb :"grow_rooms/index"
        else
            redirect "/login"
        end
    end

    get '/grow_rooms/new' do
        @users = User.all
        erb :"grow_rooms/new"
    end

    get '/grow_rooms/:id/edit' do
        @users = User.all
        @grow_room = GrowRoom.find_by_id(params[:id])
        if @grow_room.user.id == current_user.id
            erb :"grow_rooms/edit"
        else
            redirect "/grow_rooms"
        end
    end

    patch '/grow_rooms/:id' do
        @grow_room = GrowRoom.find_by_id(params[:id])
        params.delete("_method")
        params
        if @grow_room.update(params)
            redirect "/grow_rooms/#{@grow_room.id}"
        else
            redirect "/grow_rooms/#{@grow_room.id}/edit"
        end
    end

    get '/grow_rooms/:id' do
       @grow_room = GrowRoom.find_by_id(params[:id])
       erb :"grow_rooms/show"
    end

    post '/grow_rooms' do
        grow_room = GrowRoom.new(params)
            if grow_room.save
                redirect "/grow_rooms/#{grow_room.id}"
            else
                redirect "/grow_rooms/new"
            end
    end

    delete '/grow_rooms/:id' do
        @grow_room = GrowRoom.find_by_id(params[:id])
        if @grow_room.user.id == current_user.id
            @grow_room.delete
            redirect "/grow_rooms/new"
        else
            redirect "/grow_rooms/#{grow_room.id}"
        end
    end  
end