class CreateBlogConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_configurations do |t|
      t.string :headline, null: false, default: ''
      t.string :banner, null: false, default: ''
      t.date :begin_time, null: false, default: Time.now
      t.date :end_time, null: false, default: Time.now + 1.year
      t.string :summarize, null: false, default: ''
      t.string :avatar, null: false, default: ''
      t.string :weibo_page, null: false, default: ''
      t.string :github_page, null: false, default: ''
      t.string :twitter_page, null: false, default: ''

      t.timestamps
    end
  end
end
