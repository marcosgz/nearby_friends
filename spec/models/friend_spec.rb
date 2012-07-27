require 'spec_helper'

describe Friend do

  describe "#friends_near" do
    before(:each) do
      portugal = {lat: 39.3998, lon: -8.2244}
      italy    = {lat: 41.8719, lon: 12.5673}
      ukraine  = {lat: 49.2412, lon: 31.5517}
      finland  = {lat: 61.9241, lon: 25.7481}
      mexico   = {lat: 23.6345, lon: -102.5527}
      canada   = {lat: 56.1303, lon: -106.3467}
      usa      = {lat: 37.0902, lon: -95.7128}
      cuba     = {lat: 21.5217, lon: -77.7811}
      @italy    = FactoryGirl.create(:friend, italy.merge(name: "Italy"))
      @ukraine  = FactoryGirl.create(:friend, ukraine.merge(name: "ukraine"))
      @portugal = FactoryGirl.create(:friend, portugal.merge(name: "portugal"))
      @finland  = FactoryGirl.create(:friend, finland.merge(name: "finland"))
      @mexico   = FactoryGirl.create(:friend, mexico.merge(name: "mexico"))
      @canada   = FactoryGirl.create(:friend, canada.merge(name: "canada"))
      @usa      = FactoryGirl.create(:friend, usa.merge(name: "usa"))
      @cuba     = FactoryGirl.create(:friend, cuba.merge(name: "cuba"))
    end

    it "should respont to distance" do
      @finland.friends_near_me.first.should respond_to(:distance)
    end

    it "should return 3 friends near finland ordered by distance" do
      @finland.friends_near_me.map(&:name).should eq(["ukraine", "Italy", "portugal"])
    end

    it "should return 3 friends near portugal ordered by distance" do
      @portugal.friends_near_me.map(&:name).should eq(["Italy", "ukraine", "finland"])
    end

    it "should return 3 friends near mexico ordered by distance" do
      @mexico.friends_near_me.map(&:name).should eq(["usa", "cuba", "canada"])
    end
  end
end
