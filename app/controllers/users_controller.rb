class UsersController < ApplicationController
  before_action :authorized, only: [:persist]
  ##calling this method before it hit any routes
  
  def index
    @users = User.all
    render json: @users, include: ["cart", "cart.cart_items", "orders", "reviews"]
  end
  
  def show
    @user = User.find(params[:id])
    render json: @user, include: ["cart", "cart.cart_items", "orders", "reviews"]
  end
  
  ##Register
  def create
    @user = User.create(user_params)
    Cart.create(user_id: @user.id)
    # byebug
    
    if @user.valid?
      token_tag = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token_tag}, status: 201, include: ["cart", "cart.cart_items", "orders", "reviews"]
    else
      render json: {error: "Invalid username or password"}
    end
  end
  
  # LOGGING IN
  ## if the user exists in the db, then send them their token
  ##in the front end
  def login
    # byebug
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      token_tag = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user), token: token_tag}, include: ["cart", "cart.cart_items", "orders", "reviews"]
      # render json: @user, include: "**"
    else
      render json: {error: "Invalid username or password"}
    end
  end
  
  # this method makes sure that the person is logged in even after a page refresh
  def persist
    token_tag = encode_token({user_id: @user.id})
    # byebug
    render json: {user: UserSerializer.new(@user), token: token_tag}, include: ["cart", "cart.cart_items", "orders", "reviews"]
  end
  
  def profile
    render json: logged_user
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    
    render json: @user
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    render json: {message: "User has been deleted", user: @user}
  end
  
  private
  
  def user_params
    params.permit(:username, :password, :email)
  end

end
