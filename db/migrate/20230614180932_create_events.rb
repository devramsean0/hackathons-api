class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.text :location
      t.float :latitude
      t.float :longitude
      t.boolean :rejected
      t.boolean :delisted
      t.boolean :approved
      t.text :logo_url
      t.text :banner_url
      t.boolean :wants_postcards
      t.text :mailing_address
      t.boolean :subscriber_email_sent
      t.text :contact_email
      t.text :contact_name
      t.text :event_name

      t.timestamps
    end
  end
end
