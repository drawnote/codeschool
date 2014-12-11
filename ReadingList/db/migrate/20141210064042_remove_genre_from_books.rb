class RemoveGenreFromBooks < ActiveRecord::Migration
  def up
    remove_index :books, column: [:genre_id]
    remove_column :books, :genre_id
  end
  
  def down
    add_reference :books, :genre, index: 
  end
end
