require 'spec_helper'

describe "friends/show" do
  before(:each) do
    @friend = assign(:friend, stub_model(Friend,
      :name => "Name",
      :friends_near_me => [
        stub_model(Friend, :name => "Name", :distance => 1.0000000),
        stub_model(Friend, :name => "Name", :distance => 2)
      ]
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Lat/)
    rendered.should match(/Lon/)
  end
end
