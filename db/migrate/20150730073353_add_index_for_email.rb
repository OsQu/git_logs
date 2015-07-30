class AddIndexForEmail < ActiveRecord::Migration
  def change
  	add_index(:authors, :email)
  end
end
