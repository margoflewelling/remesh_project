class CreateThoughts < ActiveRecord::Migration[6.0]
  def change
    create_table :thoughts do |t|
      t.string :text
      t.references :message, null: false, foreign_key: true
      t.timestamps
    end
  end
end
