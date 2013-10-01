class InicioController < ApplicationController
  before_filter :authenticate_fan!
  def index
    @temas = Tema.all
    @fan = Fan.find_by_id(current_fan.id)
  end
end
