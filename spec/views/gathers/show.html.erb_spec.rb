require 'spec_helper'

describe "gathers/show" do
  before(:each) do
    @gather = assign(:gather, stub_model(Gather,
      :title => "Title",
      :user_id => 1,
      :description => "MyText",
      :time => "Time",
      :price => "Price",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Time/)
    rendered.should match(/Price/)
    rendered.should match(/Location/)
  end
end
