class MiembrosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index, :show]
  def index
    @directivos = Miembro.directivos
    @expertos = Miembro.expertos
  end
end
