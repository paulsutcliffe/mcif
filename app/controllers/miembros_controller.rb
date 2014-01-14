class MiembrosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]
  def index
    @directivos = Miembro.directivos
    @expertos = Miembro.expertos
    @historia = Historia.first
  end

  def borrar_foto
    @miembro = Miembro.find(params[:id])
    @miembro.update_column(:fotografia, nil)
    redirect_to action: 'show'
  end

  def editar_historia
    @historia = Historia.first
  end

  def update_historia
    @historia = Historia.first
    @historia.update_attributes(params[:historia])
    if @historia.save
      redirect_to action: 'index'
    end
  end
end
