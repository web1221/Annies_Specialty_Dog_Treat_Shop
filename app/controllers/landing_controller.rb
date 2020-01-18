class LandingController < ApplicationController

  def index
    @most_reviewed = Product.most_reviews
    @most_recent_added = Product.three_most_recent
    @made_in_usa = Product.find_usa_product('USA')
    render :index
  end

end