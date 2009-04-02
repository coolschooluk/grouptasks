require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/show.html.erb" do
  include TasksHelper
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :name => "value for name",
      :duration => 1,
      :assigned_to => ,
      :status => "value for status",
      :priority => 1
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/1/)
    response.should have_text(//)
    response.should have_text(/value\ for\ status/)
    response.should have_text(/1/)
  end
end

