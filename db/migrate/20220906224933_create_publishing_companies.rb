class CreatePublishingCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :publishing_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
