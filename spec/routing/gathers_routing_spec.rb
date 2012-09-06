require "spec_helper"

describe GathersController do
  describe "routing" do

    it "routes to #index" do
      get("/gathers").should route_to("gathers#index")
    end

    it "routes to #new" do
      get("/gathers/new").should route_to("gathers#new")
    end

    it "routes to #show" do
      get("/gathers/1").should route_to("gathers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gathers/1/edit").should route_to("gathers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gathers").should route_to("gathers#create")
    end

    it "routes to #update" do
      put("/gathers/1").should route_to("gathers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gathers/1").should route_to("gathers#destroy", :id => "1")
    end

  end
end
