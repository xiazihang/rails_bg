class CreateBlogTags < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_tags do |t|
      t.string :tag_name, null: false, default: ''
      t.boolean :deleted, null: false, default: false

      t.timestamps
    end
  end
end
