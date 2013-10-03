class InicioController < ApplicationController

  def index
    @temas = Tema.all
    @fan = Fan.where("direccion_ip = ?", request.ip).first
  end
end
