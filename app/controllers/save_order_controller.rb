class SaveOrderController < ApplicationController
  def thank_you
    @name = params[:name]
    @phone = params[:phone]
    @address = params[:address]
    
    @menuitem = Menuitem.find(params[:menuitemid])
    
    @order = Order.create(name: @name, phone: @phone,address: @address, menuitem: params[:menuitemid])    
    @order.save!
    
  end
end
