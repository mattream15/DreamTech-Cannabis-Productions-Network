class UsersController < ApplicationController

    get '/users/signup' do
        erb :'/users/signup'
    end

    get '/users/login' do
        erb :"sessions/login"
    end

    get '/users/:id/garden' do
        @user = User.find_by_id(params[:id])
        if @user.id == current_user.id
            erb :"/users/garden"
        else
            redirect "/login"
        end
    end
          
    post '/users' do
        @user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"        
        else
            redirect "/users/signup"
        end
    end

    get '/users/:id/edit' do
        @user = User.find_by_id(params[:id])
        if @user.id == current_user.id
            erb :"/users/edit"
        else
            redirect "/login"
        end
    end

    patch '/users/:id' do
        user = User.find_by_id(params[:id])
        params.delete("_method")
        if user.update(params)
            redirect "/users/#{user.id}"
        else
            redirect "/users/#{user.id}/edit"
        end
    end

    get '/users/:id' do
       @user = User.find_by_id(params[:id])
       erb :"users/show"
    end

    delete '/users/:id' do
        @user = User.find_by_id(params[:id])
        if @user.id == current_user.id
            @user.delete
            redirect "/login"
        else
            redirect "/login"
        end
    end
end