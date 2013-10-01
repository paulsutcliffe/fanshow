class TemasController < InheritedResources::Base
  before_filter :authenticate_fan!

  def index
    @temas = Tema.all
    @fan = Fan.find(current_fan.id)
  end
end
