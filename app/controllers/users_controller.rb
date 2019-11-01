class UsersController < ApplicationController

    get '/users/signup' do
        erb :'/users/signup'
    end

    post '/users' do
        user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            redirect "/dreamtech_cannabis_productions_network"
        else
            redirect "/users/signup"
        end
        #go to homepage
    end
end