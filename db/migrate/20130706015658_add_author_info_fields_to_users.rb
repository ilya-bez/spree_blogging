class AddAuthorInfoFieldsToUsers < ActiveRecord::Migration[4.2]
  def change
    change_table :blog_spree_users do |t|
      t.string :blog_nickname
      t.string :blog_website_url
      t.string :blog_google_plus_url
      t.text :blog_bio_info
    end
  end
end
