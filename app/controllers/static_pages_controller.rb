require 'flickr'

class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new
    if params[:user_id].present?
      begin
        @photos = flickr.photos.search(user_id: params[:user_id])
      rescue Flickr::FailedResponse => e
        flash.now[:alert] = "Invalid user ID or not found: #{e.message}"
        @photos = []
      end
    end
  end
end