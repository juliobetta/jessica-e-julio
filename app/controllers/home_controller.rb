class HomeController < ApplicationController
  def index
    @photos    = Photo.all

    @days_left = begin
      now    = DateTime.now
      future = DateTime.new(2014, 07, 12)

      (future.to_date - now.to_date).to_i
    end

  end
end