class AddDetailsToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :gif, :string
    add_column :projects, :summary, :string
  end
end
