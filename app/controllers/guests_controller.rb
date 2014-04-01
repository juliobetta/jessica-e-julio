class GuestsController < ApplicationController
  def create
    guest = Guest.find_by_code(params[:guest][:code])
    key   = :success

    if guest.confirmed?
      message = 'Sua presença já foi confirmada. Nos encontramos no dia 12 de julho!'
    elsif guest.confirmed!
      message = 'Agradecemos sua confirmação. Sua presença é muito importante para nós! Até lá!'
    else
      message = 'Ooops! Aconteceu algum probleminha... Por favor, ligue para (22) 3842-1585 para maiores esclarecimentos.'
      key     = :error
    end

    flash[key] = message
    redirect_to root_path
  end
end