class AddClientRefToProjects < ActiveRecord::Migration[6.0]
  def change
    add_reference :projects, :client, null: true, foreign_key: true
  end
end
