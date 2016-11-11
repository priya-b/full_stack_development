class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :event_name
      t.string :place
      t.string :date
      t.string :time
      t.string :invitees
      t.string :status

      t.timestamps null: false
    end
  end
end
