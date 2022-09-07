class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.date :publish_date
      t.text :description
      t.references :genre, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true
      t.references :publishing_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
