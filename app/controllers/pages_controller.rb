class PagesController < ApplicationController
  def new_arrivals
  	 @listings = Listing.all
    if params[:search]
      @listings = Listing.search(params[:search]).order("created_at DESC")
    else
      @listings = Listing.all.order('created_at DESC')
  end
end

  def browse
    @listings = Listing.all
    if params[:search]
      @listings = Listing.search(params[:search]).order("name DESC")
    else
      @listings = Listing.all.order('name DESC')
    end
  end
end
