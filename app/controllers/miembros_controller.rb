class MiembrosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]
  def index
    @directivos = Miembro.directivos
    @expertos = Miembro.expertos
  end

  def borrar_foto
    @miembro = Miembro.find(params[:id])
    @miembro.update_column(:fotografia, nil)
    redirect_to action: 'show'
  end
end
