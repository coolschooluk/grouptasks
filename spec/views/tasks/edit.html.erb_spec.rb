require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/tasks/edit.html.erb" do
  include TasksHelper
  
  before(:each) do
    assigns[:task] = @task = stub_model(Task,
      :new_record? => false,
      :name => "value for name",
      :duration => 1,
      :assigned_to => ,
      :status => "value for status",
      :priority => 1
    )
  end

  it "renders the edit task form" do
    render
    
    response.should have_tag("form[action=#{task_path(@task)}][method=post]") do
      with_tag('input#task_name[name=?]', "task[name]")
      with_tag('input#task_duration[name=?]', "task[duration]")
      with_tag('input#task_assigned_to[name=?]', "task[assigned_to]")
      with_tag('input#task_status[name=?]', "task[status]")
      with_tag('input#task_priority[name=?]', "task[priority]")
    end
  end
end


