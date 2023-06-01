class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.text :email
      t.text :location
      t.timestamp :unsubscribed_at

      t.timestamps
    end
  end
end
