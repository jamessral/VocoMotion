require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "MyString",
      :type => "",
      :location => "MyString",
      :time => "MyString",
      :discipline => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_type[name=?]", "project[type]"

      assert_select "input#project_location[name=?]", "project[location]"

      assert_select "input#project_time[name=?]", "project[time]"

      assert_select "input#project_discipline[name=?]", "project[discipline]"
    end
  end
end
