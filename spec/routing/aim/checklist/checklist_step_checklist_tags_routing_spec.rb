require "rails_helper"

RSpec.describe Aim::Checklist::ChecklistStepChecklistTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/aim/checklist/checklist_step_checklist_tags").to route_to("aim/checklist/checklist_step_checklist_tags#index")
    end

    it "routes to #new" do
      expect(get: "/aim/checklist/checklist_step_checklist_tags/new").to route_to("aim/checklist/checklist_step_checklist_tags#new")
    end

    it "routes to #show" do
      expect(get: "/aim/checklist/checklist_step_checklist_tags/1").to route_to("aim/checklist/checklist_step_checklist_tags#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/aim/checklist/checklist_step_checklist_tags/1/edit").to route_to("aim/checklist/checklist_step_checklist_tags#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/aim/checklist/checklist_step_checklist_tags").to route_to("aim/checklist/checklist_step_checklist_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/aim/checklist/checklist_step_checklist_tags/1").to route_to("aim/checklist/checklist_step_checklist_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/aim/checklist/checklist_step_checklist_tags/1").to route_to("aim/checklist/checklist_step_checklist_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/aim/checklist/checklist_step_checklist_tags/1").to route_to("aim/checklist/checklist_step_checklist_tags#destroy", id: "1")
    end
  end
end
