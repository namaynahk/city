require 'spec_helper'

describe "deletes/edit" do
  before(:each) do
    @delete = assign(:delete, stub_model(Delete,
      :event => "MyString"
    ))
  end

  it "renders the edit delete form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deletes_path(@delete), :method => "post" do
      assert_select "input#delete_event", :name => "delete[event]"
    end
  end
end
