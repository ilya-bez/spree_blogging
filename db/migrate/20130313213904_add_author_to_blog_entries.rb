class AddAuthorToBlogEntries < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_blogging_entries, :author, :string
  end
end
