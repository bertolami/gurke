require "spec_helper"

describe BedsController do
  describe "routing" do

    it "routes to #index" do
      get("/beds").should route_to("beds#index")
    end

    it "routes to #new" do
      get("/beds/new").should route_to("beds#new")
    end

    it "routes to #show" do
      get("/beds/1").should route_to("beds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beds/1/edit").should route_to("beds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beds").should route_to("beds#create")
    end

    it "routes to #update" do
      put("/beds/1").should route_to("beds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beds/1").should route_to("beds#destroy", :id => "1")
    end

  end
end
