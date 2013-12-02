class AsociadosController < InheritedResources::Base
  before_filter :authenticate_admin!, :except => [:index]

  def create
    create! { asociados_path }
  end

  def update
    update! { asociados_path }
  end

  def destroy
    destroy! { asociados_path }
  end
end
