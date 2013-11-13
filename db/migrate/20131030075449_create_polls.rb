class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question
      t.datetime :start_date
      t.string :deadline
      t.references :admin, index: true

      t.timestamps
    end
  end
end
