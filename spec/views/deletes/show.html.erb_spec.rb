require 'spec_helper'

describe "deletes/show" do
  before(:each) do
    @delete = assign(:delete, stub_model(Delete,
      :event => "Event"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Event/)
  end
end
