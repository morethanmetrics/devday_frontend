class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title, limit: 255
      t.text :description, limit: 4294967295
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
