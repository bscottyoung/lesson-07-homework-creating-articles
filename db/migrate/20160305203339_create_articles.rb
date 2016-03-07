class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author_first_name
      t.string :author_last_name
      t.integer :article_year
      t.string :title
      t.text :body
      t.string :pub_name
      t.integer :article_pg

      t.timestamps null: false
    end
  end
end
