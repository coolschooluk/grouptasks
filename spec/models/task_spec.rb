require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :due_date => Time.now,
      :duration => 1,
      :assigned_to => ,
      :status => "value for status",
      :priority => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Task.create!(@valid_attributes)
  end
end
