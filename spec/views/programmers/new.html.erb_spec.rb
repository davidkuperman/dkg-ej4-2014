require 'spec_helper'

describe "programmers/new" do
  before(:each) do
    assign(:programmer, stub_model(Programmer,
      :name => "MyString",
      :expertise => "MyString",
      :skills => "MyString"
    ).as_new_record)
  end

  it "renders new programmer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", programmers_path, "post" do
      assert_select "input#programmer_name[name=?]", "programmer[name]"
      assert_select "input#programmer_expertise[name=?]", "programmer[expertise]"
      assert_select "input#programmer_skills[name=?]", "programmer[skills]"
    end
  end
end
