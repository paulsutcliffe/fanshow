class TemasController < InheritedResources::Base
  before_filter :authenticate_fan!, :except => [:show]
  before_filter :comprobar_que_ya_voto, :except => [:show]

  def comprobar_que_ya_voto
    @fan = Fan.find(current_fan.id)
    if @fan.ya_voto == true
      redirect_to elegidas_fan_path(@fan)
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
