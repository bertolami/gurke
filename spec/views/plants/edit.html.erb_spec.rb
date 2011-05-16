require 'spec_helper'

describe "plants/edit.html.erb" do
  before(:each) do
    @plant = assign(:plant, stub_model(Plant,
      :name => "MyString"
    ))
  end

  it "renders the edit plant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plants_path(@plant), :method => "post" do
      assert_select "input#plant_name", :name => "plant[name]"
    end
  end
end
