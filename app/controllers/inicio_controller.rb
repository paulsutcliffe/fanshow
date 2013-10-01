class InicioController < ApplicationController

  def index
    @temas = Tema.all
  end
end
