class RegistrationsController < ApplicationController
    def create
        user = User.create!(
            email: params['user']['email'],
            password: params['user']['password'],
            password_confirmation: params['user']['password_confirmation'],
            avatar_src: params['user']['avatar_src'],
            zip_code: params['user']['zip_code'],
            farm_name: params['user']['farm_name'],
            street_address: params['user']['street_address'],
            city: params['user']['city'],
            name: params['user']['name'],
        )

        if user
            session[:user_id] = user.id 
            render json: {
                status: :created,
                user: user
            }
        else
            render json: {status: 500}
        end
    end
end