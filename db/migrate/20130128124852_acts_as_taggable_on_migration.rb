class ActsAsTaggableOnMigration < ActiveRecord::Migration[4.2]
  def self.up
    create_table :blog_tags do |t|
      t.string :name
    end

    create_table :blog_taggings do |t|
      t.references :tag

      # You should make sure that the column created is
      # long enough to store the required class names.
      t.references :taggable, :polymorphic => true
      t.references :tagger, :polymorphic => true

      # Limit is created to prevent MySQL error on index
      # length for MyISAM table type: http://bit.ly/vgW2Ql
      t.string :context, :limit => 128

      t.datetime :created_at
    end

    add_index :blog_taggings, :tag_id
    add_index :blog_taggings, [:taggable_id, :taggable_type, :context]
  end

  def self.down
    drop_table :blog_taggings
    drop_table :blog_tags
  end
end
