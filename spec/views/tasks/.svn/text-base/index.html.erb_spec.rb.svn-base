require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/index.html.erb" do
  include TasksHelper
  
  before(:each) do
    assigns[:tasks] = [
      stub_model(Task,
        :name => "value for name",
        :duration => 1,
        :assigned_to => ,
        :status => "value for status",
        :priority => 1
      ),
      stub_model(Task,
        :name => "value for name",
        :duration => 1,
        :assigned_to => ,
        :status => "value for status",
        :priority => 1
      )
    ]
  end

  it "renders a list of tasks" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", .to_s, 2)
    response.should have_tag("tr>td", "value for status".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end

