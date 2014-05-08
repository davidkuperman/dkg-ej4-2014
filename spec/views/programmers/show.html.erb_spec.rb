require 'spec_helper'

describe "programmers/show" do
  before(:each) do
    @programmer = assign(:programmer, stub_model(Programmer,
      :name => "Name",
      :expertise => "Expertise",
      :skills => "Skills"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Expertise/)
    rendered.should match(/Skills/)
  end
end
