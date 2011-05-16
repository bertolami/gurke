require 'spec_helper'

describe "families/index.html.erb" do
  before(:each) do
    assign(:families, [
      stub_model(Family,
        :name => "Name",
        :energy => "Energy"
      ),
      stub_model(Family,
        :name => "Name",
        :energy => "Energy"
      )
    ])
  end

  it "renders a list of families" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Energy".to_s, :count => 2
  end
end
