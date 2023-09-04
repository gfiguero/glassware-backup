require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/aim/checklist/checklist_interface_concepts", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Aim::Checklist::ChecklistInterfaceConcept. As you add validations to Aim::Checklist::ChecklistInterfaceConcept, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
      get aim_checklist_checklist_interface_concepts_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
      get aim_checklist_checklist_interface_concept_url(checklist_interface_concept)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_aim_checklist_checklist_interface_concept_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
      get edit_aim_checklist_checklist_interface_concept_url(checklist_interface_concept)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Aim::Checklist::ChecklistInterfaceConcept" do
        expect {
          post aim_checklist_checklist_interface_concepts_url, params: { aim_checklist_checklist_interface_concept: valid_attributes }
        }.to change(Aim::Checklist::ChecklistInterfaceConcept, :count).by(1)
      end

      it "redirects to the created aim_checklist_checklist_interface_concept" do
        post aim_checklist_checklist_interface_concepts_url, params: { aim_checklist_checklist_interface_concept: valid_attributes }
        expect(response).to redirect_to(aim_checklist_checklist_interface_concept_url(Aim::Checklist::ChecklistInterfaceConcept.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Aim::Checklist::ChecklistInterfaceConcept" do
        expect {
          post aim_checklist_checklist_interface_concepts_url, params: { aim_checklist_checklist_interface_concept: invalid_attributes }
        }.to change(Aim::Checklist::ChecklistInterfaceConcept, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post aim_checklist_checklist_interface_concepts_url, params: { aim_checklist_checklist_interface_concept: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested aim_checklist_checklist_interface_concept" do
        checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
        patch aim_checklist_checklist_interface_concept_url(checklist_interface_concept), params: { aim_checklist_checklist_interface_concept: new_attributes }
        checklist_interface_concept.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the aim_checklist_checklist_interface_concept" do
        checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
        patch aim_checklist_checklist_interface_concept_url(checklist_interface_concept), params: { aim_checklist_checklist_interface_concept: new_attributes }
        checklist_interface_concept.reload
        expect(response).to redirect_to(aim_checklist_checklist_interface_concept_url(checklist_interface_concept))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
        patch aim_checklist_checklist_interface_concept_url(checklist_interface_concept), params: { aim_checklist_checklist_interface_concept: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested aim_checklist_checklist_interface_concept" do
      checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
      expect {
        delete aim_checklist_checklist_interface_concept_url(checklist_interface_concept)
      }.to change(Aim::Checklist::ChecklistInterfaceConcept, :count).by(-1)
    end

    it "redirects to the aim_checklist_checklist_interface_concepts list" do
      checklist_interface_concept = Aim::Checklist::ChecklistInterfaceConcept.create! valid_attributes
      delete aim_checklist_checklist_interface_concept_url(checklist_interface_concept)
      expect(response).to redirect_to(aim_checklist_checklist_interface_concepts_url)
    end
  end
end
