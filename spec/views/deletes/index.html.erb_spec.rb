require 'spec_helper'

describe "deletes/index" do
  before(:each) do
    assign(:deletes, [
      stub_model(Delete,
        :event => "Event"
      ),
      stub_model(Delete,
        :event => "Event"
      )
    ])
  end

  it "renders a list of deletes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Event".to_s, :count => 2
  end
end
