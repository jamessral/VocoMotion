require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :name => "Name",
      :type => "Type",
      :location => "Location",
      :time => "Time",
      :discipline => "Discipline"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Discipline/)
  end
end
