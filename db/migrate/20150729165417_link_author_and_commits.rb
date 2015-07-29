class LinkAuthorAndCommits < ActiveRecord::Migration
  def change
    add_column :commits, :author_id, :integer
  end
end
