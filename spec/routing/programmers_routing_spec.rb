require "spec_helper"

describe ProgrammersController do
  describe "routing" do

    it "routes to #index" do
      get("/programmers").should route_to("programmers#index")
    end

    it "routes to #new" do
      get("/programmers/new").should route_to("programmers#new")
    end

    it "routes to #show" do
      get("/programmers/1").should route_to("programmers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/programmers/1/edit").should route_to("programmers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/programmers").should route_to("programmers#create")
    end

    it "routes to #update" do
      put("/programmers/1").should route_to("programmers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/programmers/1").should route_to("programmers#destroy", :id => "1")
    end

  end
end
