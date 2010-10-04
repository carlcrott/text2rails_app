class CreateInboundEmails < ActiveRecord::Migration
  def self.up
    add_index :InboundEmail, :from
    create_table :inbound_emails do |t|
      t.string :from, :text,:html, :subject, :attachments

      t.timestamps
    end
  end

  def self.down
    drop_table :inbound_emails
  end
end
