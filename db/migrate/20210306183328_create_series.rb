class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string     :title   , null: false
      t.references :category, null: false

      t.timestamps
    end

    add_foreign_key :series, :categories, column: :category_id
  end
end
