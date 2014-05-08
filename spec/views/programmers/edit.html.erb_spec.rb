require 'spec_helper'

describe "programmers/edit" do
  before(:each) do
    @programmer = assign(:programmer, stub_model(Programmer,
      :name => "MyString",
      :expertise => "MyString",
      :skills => "MyString"
    ))
  end

  it "renders the edit programmer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", programmer_path(@programmer), "post" do
      assert_select "input#programmer_name[name=?]", "programmer[name]"
      assert_select "input#programmer_expertise[name=?]", "programmer[expertise]"
      assert_select "input#programmer_skills[name=?]", "programmer[skills]"
    end
  end
end
