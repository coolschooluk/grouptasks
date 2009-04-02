require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projects/index.html.erb" do
  include ProjectsHelper
  
  before(:each) do
    assigns[:projects] = [
      stub_model(Project,
        :name => "value for name",
        :status => ,
        :notes => "value for notes",
        :owner => 
      ),
      stub_model(Project,
        :name => "value for name",
        :status => ,
        :notes => "value for notes",
        :owner => 
      )
    ]
  end

  it "renders a list of projects" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
    response.should have_tag("tr>td", "value for notes".to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
  end
end

