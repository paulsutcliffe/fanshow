#coding: utf-8
class FansController < InheritedResources::Base

  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end

  def votar
    @fan = Fan.find(params[:id])

    tema_ids = params[:temas]

    unless tema_ids.blank?
      tema_ids.each do |tema_id|
        @fan.temas << Tema.find(tema_id)
      end
      flash[:notice] = 'Gracias por tu elección, nos vemos este 25 en el Sargento Pimiento Barranco.'
    end

    @fan.ya_voto = 1
    @fan.save
    redirect_to root_path

  end
end
