require 'spec_helper'

describe "beds/edit.html.erb" do
  before(:each) do
    @bed = assign(:bed, stub_model(Bed))
  end

  it "renders the edit bed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beds_path(@bed), :method => "post" do
    end
  end
end
