require 'spec_helper'

describe "programmers/index" do
  before(:each) do
    assign(:programmers, [
      stub_model(Programmer,
        :name => "Name",
        :expertise => "Expertise",
        :skills => "Skills"
      ),
      stub_model(Programmer,
        :name => "Name",
        :expertise => "Expertise",
        :skills => "Skills"
      )
    ])
  end

  it "renders a list of programmers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Expertise".to_s, :count => 2
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
  end
end
