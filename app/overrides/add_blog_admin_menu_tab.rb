Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "blog_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<ul class='nav nav-sidebar'><%= tab(:blog_entries, :label => 'Blog', :url => spree.admin_blog_entries_path, :icon => 'file') %></ul>",
                     :disabled => false)
