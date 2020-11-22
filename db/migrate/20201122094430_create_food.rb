class CreateFood < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.integer     :user_id, limit:5, null: false
      t.string      :name
      t.date        :best_before
      t.date        :expiry_date
      t.boolean     :is_consumed, default: false, null: false
      t.timestamps
    end

    add_foreign_key :foods, :users, on_delete: :cascade
    add_index       :foods, :user_id
  end
end
