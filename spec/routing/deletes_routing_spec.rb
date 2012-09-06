require "spec_helper"

describe DeletesController do
  describe "routing" do

    it "routes to #index" do
      get("/deletes").should route_to("deletes#index")
    end

    it "routes to #new" do
      get("/deletes/new").should route_to("deletes#new")
    end

    it "routes to #show" do
      get("/deletes/1").should route_to("deletes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/deletes/1/edit").should route_to("deletes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/deletes").should route_to("deletes#create")
    end

    it "routes to #update" do
      put("/deletes/1").should route_to("deletes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/deletes/1").should route_to("deletes#destroy", :id => "1")
    end

  end
end
