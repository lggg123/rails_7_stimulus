class CreateInboxes < ActiveRecord::Migration[7.0]
  def change
    create_table :inboxes do |t|

      t.timestamps
    end
  end
end
