require 'spec_helper'

describe "beds/new.html.erb" do
  before(:each) do
    assign(:bed, stub_model(Bed).as_new_record)
  end

  it "renders new bed form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beds_path, :method => "post" do
    end
  end
end
