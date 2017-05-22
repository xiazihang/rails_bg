class CreateBlogLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_links do |t|
      t.string :link_name, null: false, default: ''
      t.string :dest_url, null: false, default: ''
      t.boolean :deleted, null: false, default: false

      t.timestamps
    end
  end
end
