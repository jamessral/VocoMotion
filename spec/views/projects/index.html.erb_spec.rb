require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :name => "Name",
        :type => "Type",
        :location => "Location",
        :time => "Time",
        :discipline => "Discipline"
      ),
      Project.create!(
        :name => "Name",
        :type => "Type",
        :location => "Location",
        :time => "Time",
        :discipline => "Discipline"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Discipline".to_s, :count => 2
  end
end
