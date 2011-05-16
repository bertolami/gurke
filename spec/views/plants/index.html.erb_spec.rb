require 'spec_helper'

describe "plants/index.html.erb" do
  before(:each) do
    assign(:plants, [
      stub_model(Plant,
        :name => "Name"
      ),
      stub_model(Plant,
        :name => "Name"
      )
    ])
  end

  it "renders a list of plants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
