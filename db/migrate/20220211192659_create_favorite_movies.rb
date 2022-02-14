class CreateFavoriteMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_movies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
