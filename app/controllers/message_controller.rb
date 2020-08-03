class MessageController < ApplicationController
  def gossip
    @gossip = Gossip.find(params[:gossip_id])
    @author = @gossip.user
  end
end
