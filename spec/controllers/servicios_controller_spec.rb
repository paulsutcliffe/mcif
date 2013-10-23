require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ServiciosController do

  # This should return the minimal set of attributes required to create a valid
  # Servicio. As you add validations to Servicio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "icono" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServiciosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all servicios as @servicios" do
      servicio = Servicio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:servicios).should eq([servicio])
    end
  end

  describe "GET show" do
    it "assigns the requested servicio as @servicio" do
      servicio = Servicio.create! valid_attributes
      get :show, {:id => servicio.to_param}, valid_session
      assigns(:servicio).should eq(servicio)
    end
  end

  describe "GET new" do
    it "assigns a new servicio as @servicio" do
      get :new, {}, valid_session
      assigns(:servicio).should be_a_new(Servicio)
    end
  end

  describe "GET edit" do
    it "assigns the requested servicio as @servicio" do
      servicio = Servicio.create! valid_attributes
      get :edit, {:id => servicio.to_param}, valid_session
      assigns(:servicio).should eq(servicio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Servicio" do
        expect {
          post :create, {:servicio => valid_attributes}, valid_session
        }.to change(Servicio, :count).by(1)
      end

      it "assigns a newly created servicio as @servicio" do
        post :create, {:servicio => valid_attributes}, valid_session
        assigns(:servicio).should be_a(Servicio)
        assigns(:servicio).should be_persisted
      end

      it "redirects to the created servicio" do
        post :create, {:servicio => valid_attributes}, valid_session
        response.should redirect_to(Servicio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved servicio as @servicio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Servicio.any_instance.stub(:save).and_return(false)
        post :create, {:servicio => { "icono" => "invalid value" }}, valid_session
        assigns(:servicio).should be_a_new(Servicio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Servicio.any_instance.stub(:save).and_return(false)
        post :create, {:servicio => { "icono" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested servicio" do
        servicio = Servicio.create! valid_attributes
        # Assuming there are no other servicios in the database, this
        # specifies that the Servicio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Servicio.any_instance.should_receive(:update_attributes).with({ "icono" => "MyString" })
        put :update, {:id => servicio.to_param, :servicio => { "icono" => "MyString" }}, valid_session
      end

      it "assigns the requested servicio as @servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => valid_attributes}, valid_session
        assigns(:servicio).should eq(servicio)
      end

      it "redirects to the servicio" do
        servicio = Servicio.create! valid_attributes
        put :update, {:id => servicio.to_param, :servicio => valid_attributes}, valid_session
        response.should redirect_to(servicio)
      end
    end

    describe "with invalid params" do
      it "assigns the servicio as @servicio" do
        servicio = Servicio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Servicio.any_instance.stub(:save).and_return(false)
        put :update, {:id => servicio.to_param, :servicio => { "icono" => "invalid value" }}, valid_session
        assigns(:servicio).should eq(servicio)
      end

      it "re-renders the 'edit' template" do
        servicio = Servicio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Servicio.any_instance.stub(:save).and_return(false)
        put :update, {:id => servicio.to_param, :servicio => { "icono" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested servicio" do
      servicio = Servicio.create! valid_attributes
      expect {
        delete :destroy, {:id => servicio.to_param}, valid_session
      }.to change(Servicio, :count).by(-1)
    end

    it "redirects to the servicios list" do
      servicio = Servicio.create! valid_attributes
      delete :destroy, {:id => servicio.to_param}, valid_session
      response.should redirect_to(servicios_url)
    end
  end

end
