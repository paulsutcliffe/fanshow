class TemasController < InheritedResources::Base

  def index
    @temas = Tema.all
    @fan = Fan.find(current_fan.id)
  end
end
