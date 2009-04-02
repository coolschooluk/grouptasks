require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/projects/show.html.erb" do
  include ProjectsHelper
  before(:each) do
    assigns[:project] = @project = stub_model(Project,
      :name => "value for name",
      :status => ,
      :notes => "value for notes",
      :owner => 
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(//)
    response.should have_text(/value\ for\ notes/)
    response.should have_text(//)
  end
end

