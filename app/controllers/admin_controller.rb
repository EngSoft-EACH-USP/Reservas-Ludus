class AdminController < ApplicationController
  def index
    if(!session[:current_user_id])
      redirect_to("/admins")
    end

		@reservas = Reserva.all

  end
end
