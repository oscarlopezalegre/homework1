class OrderController < ApplicationController
  def create_order
    @menuitemid = params[:menuitemid]
  end
  
  
end
