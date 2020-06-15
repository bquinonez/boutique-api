class ReviewsController < ApplicationController
    
    def index
        @reviews = Review.all
        render json: @reviews
    end
    
    def create
        # create_review = review_params.merge({user_id: logged_user.id})
        @review = logged_user.reviews.create(review_params)
        # byebug
        render json: @review
    end
    
    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        render json: @review
    end
    
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        
        render json: {message: "Review has been deleted", user: @review}
    end
    
    private
    
    def review_params
        params.permit(:user_id, :item_id, :rating, :comment)
    end
    
end
