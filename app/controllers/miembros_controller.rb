class MiembrosController < InheritedResources::Base

  def index
    @directivos = Miembro.directivos
    @expertos = Miembro.expertos
  end
end
