require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do

  def mock_task(stubs={})
    @mock_task ||= mock_model(Task, stubs)
  end
  
  describe "GET index" do

    it "exposes all tasks as @tasks" do
      Task.should_receive(:find).with(:all).and_return([mock_task])
      get :index
      assigns[:tasks].should == [mock_task]
    end

    describe "with mime type of xml" do
  
      it "renders all tasks as xml" do
        Task.should_receive(:find).with(:all).and_return(tasks = mock("Array of Tasks"))
        tasks.should_receive(:to_xml).and_return("generated XML")
        get :index, :format => 'xml'
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "GET show" do

    it "exposes the requested task as @task" do
      Task.should_receive(:find).with("37").and_return(mock_task)
      get :show, :id => "37"
      assigns[:task].should equal(mock_task)
    end
    
    describe "with mime type of xml" do

      it "renders the requested task as xml" do
        Task.should_receive(:find).with("37").and_return(mock_task)
        mock_task.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37", :format => 'xml'
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "GET new" do
  
    it "exposes a new task as @task" do
      Task.should_receive(:new).and_return(mock_task)
      get :new
      assigns[:task].should equal(mock_task)
    end

  end

  describe "GET edit" do
  
    it "exposes the requested task as @task" do
      Task.should_receive(:find).with("37").and_return(mock_task)
      get :edit, :id => "37"
      assigns[:task].should equal(mock_task)
    end

  end

  describe "POST create" do

    describe "with valid params" do
      
      it "exposes a newly created task as @task" do
        Task.should_receive(:new).with({'these' => 'params'}).and_return(mock_task(:save => true))
        post :create, :task => {:these => 'params'}
        assigns(:task).should equal(mock_task)
      end

      it "redirects to the created task" do
        Task.stub!(:new).and_return(mock_task(:save => true))
        post :create, :task => {}
        response.should redirect_to(task_url(mock_task))
      end
      
    end
    
    describe "with invalid params" do

      it "exposes a newly created but unsaved task as @task" do
        Task.stub!(:new).with({'these' => 'params'}).and_return(mock_task(:save => false))
        post :create, :task => {:these => 'params'}
        assigns(:task).should equal(mock_task)
      end

      it "re-renders the 'new' template" do
        Task.stub!(:new).and_return(mock_task(:save => false))
        post :create, :task => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "PUT udpate" do

    describe "with valid params" do

      it "updates the requested task" do
        Task.should_receive(:find).with("37").and_return(mock_task)
        mock_task.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :task => {:these => 'params'}
      end

      it "exposes the requested task as @task" do
        Task.stub!(:find).and_return(mock_task(:update_attributes => true))
        put :update, :id => "1"
        assigns(:task).should equal(mock_task)
      end

      it "redirects to the task" do
        Task.stub!(:find).and_return(mock_task(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(task_url(mock_task))
      end

    end
    
    describe "with invalid params" do

      it "updates the requested task" do
        Task.should_receive(:find).with("37").and_return(mock_task)
        mock_task.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :task => {:these => 'params'}
      end

      it "exposes the task as @task" do
        Task.stub!(:find).and_return(mock_task(:update_attributes => false))
        put :update, :id => "1"
        assigns(:task).should equal(mock_task)
      end

      it "re-renders the 'edit' template" do
        Task.stub!(:find).and_return(mock_task(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "DELETE destroy" do

    it "destroys the requested task" do
      Task.should_receive(:find).with("37").and_return(mock_task)
      mock_task.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the tasks list" do
      Task.stub!(:find).and_return(mock_task(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(tasks_url)
    end

  end

end
