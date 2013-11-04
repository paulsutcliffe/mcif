class ClientesController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create! { cliente_path }
  end
  def update
    update! { cliente_path }
  end
end
