class CreateInboxes < ActiveRecord::Migration[7.0]
  def change
    # uniqueness validation should have unique
    # index on database unique: true
    create_table :inboxes do |t|
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
