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

describe ProgrammersController do

  # This should return the minimal set of attributes required to create a valid
  # Programmer. As you add validations to Programmer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProgrammersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all programmers as @programmers" do
      programmer = Programmer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:programmers).should eq([programmer])
    end
  end

  describe "GET show" do
    it "assigns the requested programmer as @programmer" do
      programmer = Programmer.create! valid_attributes
      get :show, {:id => programmer.to_param}, valid_session
      assigns(:programmer).should eq(programmer)
    end
  end

  describe "GET new" do
    it "assigns a new programmer as @programmer" do
      get :new, {}, valid_session
      assigns(:programmer).should be_a_new(Programmer)
    end
  end

  describe "GET edit" do
    it "assigns the requested programmer as @programmer" do
      programmer = Programmer.create! valid_attributes
      get :edit, {:id => programmer.to_param}, valid_session
      assigns(:programmer).should eq(programmer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Programmer" do
        expect {
          post :create, {:programmer => valid_attributes}, valid_session
        }.to change(Programmer, :count).by(1)
      end

      it "assigns a newly created programmer as @programmer" do
        post :create, {:programmer => valid_attributes}, valid_session
        assigns(:programmer).should be_a(Programmer)
        assigns(:programmer).should be_persisted
      end

      it "redirects to the created programmer" do
        post :create, {:programmer => valid_attributes}, valid_session
        response.should redirect_to(Programmer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved programmer as @programmer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Programmer.any_instance.stub(:save).and_return(false)
        post :create, {:programmer => { "name" => "invalid value" }}, valid_session
        assigns(:programmer).should be_a_new(Programmer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Programmer.any_instance.stub(:save).and_return(false)
        post :create, {:programmer => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested programmer" do
        programmer = Programmer.create! valid_attributes
        # Assuming there are no other programmers in the database, this
        # specifies that the Programmer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Programmer.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => programmer.to_param, :programmer => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested programmer as @programmer" do
        programmer = Programmer.create! valid_attributes
        put :update, {:id => programmer.to_param, :programmer => valid_attributes}, valid_session
        assigns(:programmer).should eq(programmer)
      end

      it "redirects to the programmer" do
        programmer = Programmer.create! valid_attributes
        put :update, {:id => programmer.to_param, :programmer => valid_attributes}, valid_session
        response.should redirect_to(programmer)
      end
    end

    describe "with invalid params" do
      it "assigns the programmer as @programmer" do
        programmer = Programmer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Programmer.any_instance.stub(:save).and_return(false)
        put :update, {:id => programmer.to_param, :programmer => { "name" => "invalid value" }}, valid_session
        assigns(:programmer).should eq(programmer)
      end

      it "re-renders the 'edit' template" do
        programmer = Programmer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Programmer.any_instance.stub(:save).and_return(false)
        put :update, {:id => programmer.to_param, :programmer => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested programmer" do
      programmer = Programmer.create! valid_attributes
      expect {
        delete :destroy, {:id => programmer.to_param}, valid_session
      }.to change(Programmer, :count).by(-1)
    end

    it "redirects to the programmers list" do
      programmer = Programmer.create! valid_attributes
      delete :destroy, {:id => programmer.to_param}, valid_session
      response.should redirect_to(programmers_url)
    end
  end

end