class CreateCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :counter do |t|
      t.integer :count, null: false, default: 0
    end
  end
end
