class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string :title, null: false, default: ''
      t.text :content
      t.boolean :publish, null: false, default: false

      t.timestamps
    end
  end
end
