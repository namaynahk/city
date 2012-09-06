require 'spec_helper'

describe "deletes/new" do
  before(:each) do
    assign(:delete, stub_model(Delete,
      :event => "MyString"
    ).as_new_record)
  end

  it "renders new delete form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => deletes_path, :method => "post" do
      assert_select "input#delete_event", :name => "delete[event]"
    end
  end
end
