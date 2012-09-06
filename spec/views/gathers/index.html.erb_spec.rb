require 'spec_helper'

describe "gathers/index" do
  before(:each) do
    assign(:gathers, [
      stub_model(Gather,
        :title => "Title",
        :user_id => 1,
        :description => "MyText",
        :time => "Time",
        :price => "Price",
        :location => "Location"
      ),
      stub_model(Gather,
        :title => "Title",
        :user_id => 1,
        :description => "MyText",
        :time => "Time",
        :price => "Price",
        :location => "Location"
      )
    ])
  end

  it "renders a list of gathers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
