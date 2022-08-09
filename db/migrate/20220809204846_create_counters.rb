class CreateCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :counters do |t|
      t.integer :count, null: false, default: 0
    end
  end
end
