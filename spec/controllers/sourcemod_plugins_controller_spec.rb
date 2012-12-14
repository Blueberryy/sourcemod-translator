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

describe SourcemodPluginsController do

  # This should return the minimal set of attributes required to create a valid
  # SourcemodPlugin. As you add validations to SourcemodPlugin, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SourcemodPluginsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all sourcemod_plugins as @sourcemod_plugins" do
      sourcemod_plugin = SourcemodPlugin.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sourcemod_plugins).should eq([sourcemod_plugin])
    end
  end

  describe "GET show" do
    it "assigns the requested sourcemod_plugin as @sourcemod_plugin" do
      sourcemod_plugin = SourcemodPlugin.create! valid_attributes
      get :show, {:id => sourcemod_plugin.to_param}, valid_session
      assigns(:sourcemod_plugin).should eq(sourcemod_plugin)
    end
  end

  describe "GET new" do
    it "assigns a new sourcemod_plugin as @sourcemod_plugin" do
      get :new, {}, valid_session
      assigns(:sourcemod_plugin).should be_a_new(SourcemodPlugin)
    end
  end

  describe "GET edit" do
    it "assigns the requested sourcemod_plugin as @sourcemod_plugin" do
      sourcemod_plugin = SourcemodPlugin.create! valid_attributes
      get :edit, {:id => sourcemod_plugin.to_param}, valid_session
      assigns(:sourcemod_plugin).should eq(sourcemod_plugin)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SourcemodPlugin" do
        expect {
          post :create, {:sourcemod_plugin => valid_attributes}, valid_session
        }.to change(SourcemodPlugin, :count).by(1)
      end

      it "assigns a newly created sourcemod_plugin as @sourcemod_plugin" do
        post :create, {:sourcemod_plugin => valid_attributes}, valid_session
        assigns(:sourcemod_plugin).should be_a(SourcemodPlugin)
        assigns(:sourcemod_plugin).should be_persisted
      end

      it "redirects to the created sourcemod_plugin" do
        post :create, {:sourcemod_plugin => valid_attributes}, valid_session
        response.should redirect_to(SourcemodPlugin.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sourcemod_plugin as @sourcemod_plugin" do
        # Trigger the behavior that occurs when invalid params are submitted
        SourcemodPlugin.any_instance.stub(:save).and_return(false)
        post :create, {:sourcemod_plugin => {}}, valid_session
        assigns(:sourcemod_plugin).should be_a_new(SourcemodPlugin)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        SourcemodPlugin.any_instance.stub(:save).and_return(false)
        post :create, {:sourcemod_plugin => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sourcemod_plugin" do
        sourcemod_plugin = SourcemodPlugin.create! valid_attributes
        # Assuming there are no other sourcemod_plugins in the database, this
        # specifies that the SourcemodPlugin created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        SourcemodPlugin.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => sourcemod_plugin.to_param, :sourcemod_plugin => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested sourcemod_plugin as @sourcemod_plugin" do
        sourcemod_plugin = SourcemodPlugin.create! valid_attributes
        put :update, {:id => sourcemod_plugin.to_param, :sourcemod_plugin => valid_attributes}, valid_session
        assigns(:sourcemod_plugin).should eq(sourcemod_plugin)
      end

      it "redirects to the sourcemod_plugin" do
        sourcemod_plugin = SourcemodPlugin.create! valid_attributes
        put :update, {:id => sourcemod_plugin.to_param, :sourcemod_plugin => valid_attributes}, valid_session
        response.should redirect_to(sourcemod_plugin)
      end
    end

    describe "with invalid params" do
      it "assigns the sourcemod_plugin as @sourcemod_plugin" do
        sourcemod_plugin = SourcemodPlugin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SourcemodPlugin.any_instance.stub(:save).and_return(false)
        put :update, {:id => sourcemod_plugin.to_param, :sourcemod_plugin => {}}, valid_session
        assigns(:sourcemod_plugin).should eq(sourcemod_plugin)
      end

      it "re-renders the 'edit' template" do
        sourcemod_plugin = SourcemodPlugin.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        SourcemodPlugin.any_instance.stub(:save).and_return(false)
        put :update, {:id => sourcemod_plugin.to_param, :sourcemod_plugin => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sourcemod_plugin" do
      sourcemod_plugin = SourcemodPlugin.create! valid_attributes
      expect {
        delete :destroy, {:id => sourcemod_plugin.to_param}, valid_session
      }.to change(SourcemodPlugin, :count).by(-1)
    end

    it "redirects to the sourcemod_plugins list" do
      sourcemod_plugin = SourcemodPlugin.create! valid_attributes
      delete :destroy, {:id => sourcemod_plugin.to_param}, valid_session
      response.should redirect_to(sourcemod_plugins_url)
    end
  end

end