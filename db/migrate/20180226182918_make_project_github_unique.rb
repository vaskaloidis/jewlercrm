class MakeProjectGithubUnique < ActiveRecord::Migration[5.2]
  def change
    add_index :projects, :github_url, unique: true
    add_index :projects, :github_secondary_url, unique: true
  end
end