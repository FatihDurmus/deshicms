class PublicPController < ApplicationController
  def index
    @photos = Photo.all
  end
end
