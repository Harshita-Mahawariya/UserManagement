class CreateCustomFields < ActiveRecord::Migration[7.1]
  def change
    create_table :custom_fields do |t|
      t.string :field_label
      t.string :field_type
      t.string :default_value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
