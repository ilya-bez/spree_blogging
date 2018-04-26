class AddAuthorToBlogEntries < ActiveRecord::Migration
  def change
    add_column :spree_blogging_entries, :author, :string
  end
end
