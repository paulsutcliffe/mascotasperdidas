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

describe TestimoniosController do

  # This should return the minimal set of attributes required to create a valid
  # Testimonio. As you add validations to Testimonio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "foto" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TestimoniosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all testimonios as @testimonios" do
      testimonio = Testimonio.create! valid_attributes
      get :index, {}, valid_session
      assigns(:testimonios).should eq([testimonio])
    end
  end

  describe "GET show" do
    it "assigns the requested testimonio as @testimonio" do
      testimonio = Testimonio.create! valid_attributes
      get :show, {:id => testimonio.to_param}, valid_session
      assigns(:testimonio).should eq(testimonio)
    end
  end

  describe "GET new" do
    it "assigns a new testimonio as @testimonio" do
      get :new, {}, valid_session
      assigns(:testimonio).should be_a_new(Testimonio)
    end
  end

  describe "GET edit" do
    it "assigns the requested testimonio as @testimonio" do
      testimonio = Testimonio.create! valid_attributes
      get :edit, {:id => testimonio.to_param}, valid_session
      assigns(:testimonio).should eq(testimonio)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Testimonio" do
        expect {
          post :create, {:testimonio => valid_attributes}, valid_session
        }.to change(Testimonio, :count).by(1)
      end

      it "assigns a newly created testimonio as @testimonio" do
        post :create, {:testimonio => valid_attributes}, valid_session
        assigns(:testimonio).should be_a(Testimonio)
        assigns(:testimonio).should be_persisted
      end

      it "redirects to the created testimonio" do
        post :create, {:testimonio => valid_attributes}, valid_session
        response.should redirect_to(Testimonio.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved testimonio as @testimonio" do
        # Trigger the behavior that occurs when invalid params are submitted
        Testimonio.any_instance.stub(:save).and_return(false)
        post :create, {:testimonio => { "foto" => "invalid value" }}, valid_session
        assigns(:testimonio).should be_a_new(Testimonio)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Testimonio.any_instance.stub(:save).and_return(false)
        post :create, {:testimonio => { "foto" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested testimonio" do
        testimonio = Testimonio.create! valid_attributes
        # Assuming there are no other testimonios in the database, this
        # specifies that the Testimonio created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Testimonio.any_instance.should_receive(:update_attributes).with({ "foto" => "MyString" })
        put :update, {:id => testimonio.to_param, :testimonio => { "foto" => "MyString" }}, valid_session
      end

      it "assigns the requested testimonio as @testimonio" do
        testimonio = Testimonio.create! valid_attributes
        put :update, {:id => testimonio.to_param, :testimonio => valid_attributes}, valid_session
        assigns(:testimonio).should eq(testimonio)
      end

      it "redirects to the testimonio" do
        testimonio = Testimonio.create! valid_attributes
        put :update, {:id => testimonio.to_param, :testimonio => valid_attributes}, valid_session
        response.should redirect_to(testimonio)
      end
    end

    describe "with invalid params" do
      it "assigns the testimonio as @testimonio" do
        testimonio = Testimonio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Testimonio.any_instance.stub(:save).and_return(false)
        put :update, {:id => testimonio.to_param, :testimonio => { "foto" => "invalid value" }}, valid_session
        assigns(:testimonio).should eq(testimonio)
      end

      it "re-renders the 'edit' template" do
        testimonio = Testimonio.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Testimonio.any_instance.stub(:save).and_return(false)
        put :update, {:id => testimonio.to_param, :testimonio => { "foto" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested testimonio" do
      testimonio = Testimonio.create! valid_attributes
      expect {
        delete :destroy, {:id => testimonio.to_param}, valid_session
      }.to change(Testimonio, :count).by(-1)
    end

    it "redirects to the testimonios list" do
      testimonio = Testimonio.create! valid_attributes
      delete :destroy, {:id => testimonio.to_param}, valid_session
      response.should redirect_to(testimonios_url)
    end
  end

end
