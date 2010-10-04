class AddAttachmentsPhotoToInboundEmail < ActiveRecord::Migration
  def self.up
    add_column :inbound_emails, :photo_file_name, :string
    add_column :inbound_emails, :photo_content_type, :string
    add_column :inbound_emails, :photo_file_size, :integer
    add_column :inbound_emails, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :inbound_emails, :photo_file_name
    remove_column :inbound_emails, :photo_content_type
    remove_column :inbound_emails, :photo_file_size
    remove_column :inbound_emails, :photo_updated_at
  end
end
