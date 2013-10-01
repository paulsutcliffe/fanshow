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
      flash[:notice] = 'voto exitoso'
    end
    redirect_to root_path

  end
end
