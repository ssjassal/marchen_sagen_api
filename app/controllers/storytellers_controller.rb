class StorytellersController < ApplicationController
  before_action :set_storyteller, only: [:show, :update, :destroy]
  # before_action :authenticate_token, except: [:login, :create]
  # before_action :authorize_storyteller, except: [:login, :create, :index]

  # GET /storytellers
  def index
    @storytellers = Storyteller.all

    render json: @storytellers.to_json(include: :stories)
  end

  # GET /storytellers/1
  def show
    render json: @storyteller
  end

  # POST /storytellers
  def create
    @storyteller = Storyteller.new(storyteller_params)

    if @storyteller.save
      render json: @storyteller, status: :created, location: @storyteller
    else
      render json: @storyteller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /storytellers/1
  def update
    if @storyteller.update(storyteller_params)
      render json: @storyteller
    else
      render json: @storyteller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storytellers/1
  def destroy
    @storyteller.destroy
  end

  # def login
  #  #  byebug
  #   storyteller = Storyteller.find_by(username: params[:storyteller][:username])
  #   if storyteller && storyteller.authenticate(params[:storyteller][:password])
  #     token = create_token(storyteller.id, storyteller.username)
  #     render json: {status: 200, token: token, storyteller: storyteller}
  #   else
  #     render json: {status: 401, message: "Unauthorized"}
  #   end
  # end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storyteller
      @storyteller = Storyteller.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def storyteller_params
      params.require(:storyteller).permit(:name, :email, :username, :password, :total, :id)
    end

   #  def create_token(id, username)
   #   JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
   #  end
    #
   #  def payload(id, username)
   #    {
   #      exp: (Time.now + 30.minutes).to_i,
   #      iat: Time.now.to_i,
   #      iss: ENV['JWT_ISSUER'],
   #      user: {
   #       id: id,
   #       username: username
   #      }
   #    }
   #  end
end
