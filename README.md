Practicing with paperclip.

Instructions:

1.	Add gem 'paperclip' to Gemfile
2.  Add has_attached_file :attachment to model (or whatever you want to call it in place of :attachment) and add :attachment to attr_accessible
3.	Create a migration that adds the following columns to your database:

		-attachment_file_name 
		-attachment_content_type
		-attachment_file_size
		-attachment_updated_at

Can do individually as above, or with the following:

		class AddAttachmentColumnsToUser < ActiveRecord::Migration
		  def self.up
		    change_table :users do |t|
		      t.has_attached_file :attachment
		    end
		  end

		  def self.down
		    drop_attached_file :users, :attachment
		  end
		end
		
4.	rake db:migrate
5.	Make sure your form_for has the :hmtl part like the following: 

    `<%= form_for @user, :html => { :multipart => true } do |f| %>`

6.	Add `<%= f.file_field :attachment %>` to your new and edit views
7.	Add following code to show view (or wherever you want it displayed):

		<% if user.attachment.exists? %>
			<%= image_tag user.attachment.url, :size => "50x50" %>
		<% end %>