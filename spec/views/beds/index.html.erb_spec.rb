require 'spec_helper'

describe "beds/index.html.erb" do
  before(:each) do
    assign(:beds, [
      stub_model(Bed),
      stub_model(Bed)
    ])
  end

  it "renders a list of beds" do
    render
  end
end
