class MenuController < ApplicationController
  def index
    basic
    render_generic    
  end
  
  def basic
    @Menuitems = Menuitem.all
    
    @breakfasttoggle = "breakfast"
    @lunchtoggle = "lunch"
    @dinertoggle = "dinner"
    @drinktoggle = "drink"
    
    @sortstatus = ""
    
    if params[:sort]
      @sortstatus = params[:sort]
    end
    togglestatus
  end


  def UpdateToggle
    @Menuitems = Menuitem.all
        
    render_generic
  
  end
      
  def ToggleBreakfast
    basic
    if @breakfasttoggle == "none"
      @breakfasttoggle = "breakfast"
    else
      @breakfasttoggle = "none"
    end
    render_generic
  end
  
  def ToggleLunch    
    basic
    if @lunchtoggle == "none"
      @lunchtoggle = "lunch"
    else
      @lunchtoggle = "none"
    end
    render_generic
  end
  
  def ToggleDinner    
    basic    
    if @dinertoggle == "none"
      @dinertoggle = "dinner"
    else
      @dinertoggle = "none"
    end
    render_generic
  end

  def ToggleDrinks    
    basic    
    if @drinktoggle == "none"
      @drinktoggle = "drink"
    else
      @drinktoggle = "none"
    end
    render_generic
  end

  def SortMenuItem    
    basic    
    render_generic
  end  
  
  private
  def render_generic
    render '/menu/index'
  end

  def togglestatus
    if params[:breakfasttoggle]
      @breakfasttoggle = params[:breakfasttoggle]
    end
    if params[:lunchtoggle]
      @lunchtoggle = params[:lunchtoggle]
    end
    if params[:dinertoggle]
      @dinertoggle = params[:dinertoggle]
    end
    if params[:drinktoggle]
      @drinktoggle = params[:drinktoggle]
    end
    
  end

  
end
