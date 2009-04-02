require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projects/new.html.erb" do
  include ProjectsHelper
  
  before(:each) do
    assigns[:project] = stub_model(Project,
      :new_record? => true,
      :name => "value for name",
      :status => ,
      :notes => "value for notes",
      :owner => 
    )
  end

  it "renders new project form" do
    render
    
    response.should have_tag("form[action=?][method=post]", projects_path) do
      with_tag("input#project_name[name=?]", "project[name]")
      with_tag("input#project_status[name=?]", "project[status]")
      with_tag("textarea#project_notes[name=?]", "project[notes]")
      with_tag("input#project_owner[name=?]", "project[owner]")
    end
  end
end


