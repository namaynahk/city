require 'spec_helper'

describe "gathers/edit" do
  before(:each) do
    @gather = assign(:gather, stub_model(Gather,
      :title => "MyString",
      :user_id => 1,
      :description => "MyText",
      :time => "MyString",
      :price => "MyString",
      :location => "MyString"
    ))
  end

  it "renders the edit gather form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => gathers_path(@gather), :method => "post" do
      assert_select "input#gather_title", :name => "gather[title]"
      assert_select "input#gather_user_id", :name => "gather[user_id]"
      assert_select "textarea#gather_description", :name => "gather[description]"
      assert_select "input#gather_time", :name => "gather[time]"
      assert_select "input#gather_price", :name => "gather[price]"
      assert_select "input#gather_location", :name => "gather[location]"
    end
  end
end
