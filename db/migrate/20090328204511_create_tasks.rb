class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.datetime :due_date
      t.integer :duration
      t.references :assigned_user
      t.references :assigned_group
      t.string :status
      t.integer :priority
      t.references :project

      t.userstamps
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
