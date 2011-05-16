require "spec_helper"

describe PlantsController do
  describe "routing" do

    it "routes to #index" do
      get("/plants").should route_to("plants#index")
    end

    it "routes to #new" do
      get("/plants/new").should route_to("plants#new")
    end

    it "routes to #show" do
      get("/plants/1").should route_to("plants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plants/1/edit").should route_to("plants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plants").should route_to("plants#create")
    end

    it "routes to #update" do
      put("/plants/1").should route_to("plants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plants/1").should route_to("plants#destroy", :id => "1")
    end

  end
end
