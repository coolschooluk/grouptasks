class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :due_date
      t.string :status
      t.text :notes
      t.references :owner

      t.userstamps
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
