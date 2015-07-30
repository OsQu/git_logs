class IndexForMessage < ActiveRecord::Migration
  def change
  	add_index(:commits, :message)
  end
end
