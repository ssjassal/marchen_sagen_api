class ApplicationController < ActionController::API
   require 'jwt'
   require 'dotenv-rails'
   require 'bcrypt'
   
   def authenticate_token
     puts "AUTHENTICATE JWT"
     render json: { status: 401, message: 'Unauthorized' } unless decode_token(bearer_token)
   end

   def bearer_token
     puts "BEARER TOKEN"
     puts header = request.env["HTTP_AUTHORIZATION"]

     pattern = /^Bearer /
     puts "TOKEN WITHOUT BEARER"
     puts header.gsub(pattern, '') if header && header.match(pattern)
     header.gsub(pattern, '') if header && header.match(pattern)
   end

   def decode_token(token_input)
     puts "DECODE TOKEN, token input: #{token_input}"
     puts token = JWT.decode(token_input, ENV['JWT_SECRET'], true)
     JWT.decode(token_input, ENV['JWT_SECRET'], true)
     rescue
     render json: { status: 401, message: 'Unauthorized'}
   end

   def get_current_storyteller
     return if !bearer_token
     decode_jwt = decode_token(bearer_token)
     Storyteller.find(decode_jwt[0]["storyteller"]["id"])
   end

   def show
      render json: get_current_storyteller
   end

   def authorize_storyteller
     puts "AUTHORIZE STORYTELLER"
     puts "storyteller id: #{get_current_storyteller.id}"
     puts "params: #{params[:id]}"
     render json: { status: 401, message: "Unauthorized"} unless get_current_storyteller.id == params[:id].to_i
   end

end
