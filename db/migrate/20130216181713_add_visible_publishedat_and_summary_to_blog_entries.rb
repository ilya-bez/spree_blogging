class AddVisiblePublishedatAndSummaryToBlogEntries < ActiveRecord::Migration[4.2]
  def change
    add_column :spree_blogging_entries, :visible, :boolean, :default => false
    add_column :spree_blogging_entries, :published_at, :datetime
    add_column :spree_blogging_entries, :summary, :text
  end
end
