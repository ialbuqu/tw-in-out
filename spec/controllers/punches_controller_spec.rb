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

describe PunchesController do

  let(:punch) { mock_model(Punch, id: 1) }

  # This should return the minimal set of attributes required to create a valid
  # Punch. As you add validations to Punch, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PunchesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all punches as @punches" do
      Punch.stub(:all) { [punch] }
      get :index, {}, valid_session
      assigns(:punches).should eq([punch])
    end
  end

  describe "GET show" do
    it "assigns the requested punch as @punch" do
      Punch.stub(:find).with("1") { punch }
      get :show, {:id => punch.to_param}, valid_session
      assigns(:punch).should eq(punch)
    end
  end

  describe "GET new" do
    it "assigns a new punch as @punch" do
      get :new, {}, valid_session
      assigns(:punch).should be_a_new(Punch)
    end
  end

  describe "GET edit" do
    it "assigns the requested punch as @punch" do
      Punch.stub(:find).with("1") { punch }
      get :edit, {:id => punch.to_param}, valid_session
      assigns(:punch).should eq(punch)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      xit "creates a new Punch" do
        expect {
          post :create, {:punch => valid_attributes}, valid_session
        }.to change(Punch, :count).by(1)
      end

      xit "assigns a newly created punch as @punch" do
        post :create, {:punch => valid_attributes}, valid_session
        assigns(:punch).should be_a(Punch)
        assigns(:punch).should be_persisted
      end

      xit "redirects to the created punch" do
        post :create, {:punch => valid_attributes}, valid_session
        response.should redirect_to(Punch.last)
      end
    end

    describe "with invalid params" do
      xit "assigns a newly created but unsaved punch as @punch" do
        # Trigger the behavior that occurs when invalid params are submitted
        Punch.any_instance.stub(:save).and_return(false)
        post :create, {:punch => {}}, valid_session
        assigns(:punch).should be_a_new(Punch)
      end

      xit "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Punch.any_instance.stub(:save).and_return(false)
        post :create, {:punch => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      xit "updates the requested punch" do
        punch = Punch.create! valid_attributes
        # Assuming there are no other punches in the database, this
        # specifies that the Punch created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Punch.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => punch.to_param, :punch => {'these' => 'params'}}, valid_session
      end

      xit "assigns the requested punch as @punch" do
        punch = Punch.create! valid_attributes
        put :update, {:id => punch.to_param, :punch => valid_attributes}, valid_session
        assigns(:punch).should eq(punch)
      end

      xit "redirects to the punch" do
        punch = Punch.create! valid_attributes
        put :update, {:id => punch.to_param, :punch => valid_attributes}, valid_session
        response.should redirect_to(punch)
      end
    end

    describe "with invalid params" do
      xit "assigns the punch as @punch" do
        punch = Punch.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Punch.any_instance.stub(:save).and_return(false)
        put :update, {:id => punch.to_param, :punch => {}}, valid_session
        assigns(:punch).should eq(punch)
      end

      xit "re-renders the 'edit' template" do
        punch = Punch.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Punch.any_instance.stub(:save).and_return(false)
        put :update, {:id => punch.to_param, :punch => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    xit "destroys the requested punch" do
      punch = Punch.create! valid_attributes
      expect {
        delete :destroy, {:id => punch.to_param}, valid_session
      }.to change(Punch, :count).by(-1)
    end

    xit "redirects to the punches list" do
      punch = Punch.create! valid_attributes
      delete :destroy, {:id => punch.to_param}, valid_session
      response.should redirect_to(punches_url)
    end
  end

end
