class GrowRoomsController < ApplicationController

    get '/grow_room' do
        if logged_in?
            @grow_room = Grow_Room.all
            erb :"grow_room/index"
        else
            redirect "/login"
        end
    end

    get '/grow_room/new' do
        @users = User.all
        erb :"grow_room/new"
    end

    get '/grow_room/:id/edit' do
        @users = User.all
        @grow_room = Grow_Room.find_by_id(params[:id])
        if @grow_room.user.id == current_user.id
            erb :"grow_room/edit"
        else
            redirect "/grow_room"
        end
    end

    patch '/grow_room/:id' do
        @grow_room = Grow_Room.find_by_id(params[:id])
        params.delete("_method")
        if @grow_room.update(params)
            redirect "/grow_room/#{@grow_room.id}"
        else
            redirect "/grow_room/#{@grow_room.id}/edit"
        end
    end

    get '/grow_room/:id' do
       @grow_room = Grow_Room.find_by_id(params[:id])
       erb :"grow_room/show"
    end

    post '/grow_room' do
        @grow_room = Grow_Room.new(params)
            if @grow_room.save
                redirect "/grow_room/#{@grow_room.id}"
            else
                redirect "/grow_room/new"
            end
    end

    delete '/grow_room/:id' do
        @grow_room = Grow_Room.find_by_id(params[:id])
        if @grow_room.user.id == current_user.id
            @grow_room.delete
            redirect "/grow_room"
        else
            redirect "/grow_room"
        end
    end  
end