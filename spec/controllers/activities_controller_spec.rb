# encoding: utf-8
require "spec_helper"

describe ActivitiesController, "#receive" do
  let(:result) { "Did some stuff" }

  let(:provoking_activity_name) { "provoke" }
  let(:aint_provoking_activity_name) { "dont_provoke" }

  context "when activity is provoking" do
    before do
      post :receive, :activity_name => provoking_activity_name
    end

    it "does some stuff" do
      # test doing of some stuff
    end

    it "responds with the result" do
      response.body.should eq result
    end
  end

  context "when activity is NOT provoking" do
    before do
      post :receive, :activity_name => aint_provoking_activity_name
    end

    it "does NOT do some stuff" do
      # test not doing of some stuff
    end

    it "responds with nothing" do
      response.body.should be_blank
    end
  end
end
