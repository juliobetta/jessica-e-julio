class HomeController < ApplicationController
  def index
    @guest  = Guest.new(code: '')
    @photos = Photo.all

    days_left = begin
      now    = DateTime.now
      future = DateTime.new(2014, 07, 12)

      (future.to_date - now.to_date).to_i
    end

    @status_message = 'Estamos Casados!!!'
  end

  def gallery
    @photos = Photo.all

    render partial: 'photo', collection: @photos
  end
end