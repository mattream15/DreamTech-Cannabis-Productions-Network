class UsersController < ApplicationController

    get '/users/signup' do
        erb :'/users/signup'
    end

    post '/users' do
        user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            redirect "/crop_productions"
        else
            redirect "/users/signup"
        end
    end
end