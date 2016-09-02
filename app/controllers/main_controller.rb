class MainController < ApplicationController
 
  def home
  	@post= Post.new
    @posts= Post.all
    @postss = filtrar    

  end

  def unregistered
  end

  helper_method :changeArea
  def changeArea
    $global_area = params[:my_param].to_f
    puts "aaaaaaaaaaaaaaaaa"
     puts $global_area
     redirect_to root_path
    
  end

  

  protected
	  def set_layout
	  	return "landing" if action_name == "unregistered"
	  	super
	  	
	  end


  def filtrar
    if $global_area == 0 or $global_area == nil
      $global_area = 0
      return @posts.reverse
    end

    arreglo_vacio = []
    @posts.each do |p|
      if p.area == $global_area
        puts $global_area
        arreglo_vacio.push(p)
      end
    end
    arreglo_vacio.reverse!

    return arreglo_vacio

    
  end



end
