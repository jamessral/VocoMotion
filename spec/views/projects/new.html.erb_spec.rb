require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :type => "",
      :location => "MyString",
      :time => "MyString",
      :discipline => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_type[name=?]", "project[type]"

      assert_select "input#project_location[name=?]", "project[location]"

      assert_select "input#project_time[name=?]", "project[time]"

      assert_select "input#project_discipline[name=?]", "project[discipline]"
    end
  end
end
