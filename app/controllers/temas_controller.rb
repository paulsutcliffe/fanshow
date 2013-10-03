class TemasController < InheritedResources::Base
  before_filter :comprobar_que_ya_voto

  def comprobar_que_ya_voto
    @fan = Fan.where("direccion_ip = ?", request.ip).first
    if @fan
      if @fan.direccion_ip == request.ip
        redirect_to root_path
      end
    else
      @fan = Fan.create
    end
  end

  def index
    @temas = Tema.all
  end

  def show
    @tema = Tema.find(params[:id])
    @fans = @tema.fans
  end
end
