class Project < ActiveRecord::Base
  belongs_to :status
  belongs_to :owner
end
