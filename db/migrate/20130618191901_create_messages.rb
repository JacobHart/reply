class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :content
      t.belongs_to :receivable, polymorphic: true

      t.timestamps
    end
    add_index :messages, [:receivable_id, :receivable_type]
  end
end
