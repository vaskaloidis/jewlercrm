class Add < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :commit_diff_path, :string, default: nil
  end
end