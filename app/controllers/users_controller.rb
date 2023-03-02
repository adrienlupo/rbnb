class UsersController < ApplicationController

  def profil
    @user = current_user
    @owned_motorcycles = current_user.motorcycles
    @bookings = current_user.bookings
  end
end
