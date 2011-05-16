require 'spec_helper'

describe "plants/new.html.erb" do
  before(:each) do
    assign(:plant, stub_model(Plant,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plants_path, :method => "post" do
      assert_select "input#plant_name", :name => "plant[name]"
    end
  end
end
