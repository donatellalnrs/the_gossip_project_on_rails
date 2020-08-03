class WelcomeController < ApplicationController
  def show
    @user_entry = params[:user_entry]
    @gossips = Gossip.all 
  end
end
