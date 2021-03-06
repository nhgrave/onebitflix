class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string     :title          , null: false
      t.text       :description
      t.string     :video_key
      t.integer    :episode_number
      t.references :serie
      t.references :category      , null: false

      t.timestamps
    end

    add_foreign_key :movies, :series    , column: :serie_id
    add_foreign_key :movies, :categories, column: :category_id
  end
end
