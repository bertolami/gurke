require 'spec_helper'

describe "families/edit.html.erb" do
  before(:each) do
    @family = assign(:family, stub_model(Family,
      :name => "MyString",
      :energy => "MyString"
    ))
  end

  it "renders the edit family form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => families_path(@family), :method => "post" do
      assert_select "input#family_name", :name => "family[name]"
      assert_select "input#family_energy", :name => "family[energy]"
    end
  end
end
