#coding: utf-8
class FansController < InheritedResources::Base
  def votar
    @fan = Fan.find(params[:id])

    tema_ids = params[:temas]

    unless tema_ids.blank?
      tema_ids.each do |tema_id|
        @fan.temas << Tema.find(tema_id)
      end
      flash[:notice] = 'Gracias por tu elección, nos vemos este 25 en el Sargento Pimiento Barranco.'
      @fan.direccion_ip = request.ip
      @fan.save
    end

    redirect_to root_path

  end

  def elegidas
    @fan = Fan.where("direccion_ip = ?", request.ip)
    @temas = @fan.temas
  end
end
