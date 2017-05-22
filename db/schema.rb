# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170507144124) do

  create_table "blog_configurations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "headline",     default: "",           null: false
    t.string   "banner",       default: "",           null: false
    t.date     "begin_time",   default: '2017-05-07', null: false
    t.date     "end_time",     default: '2018-05-07', null: false
    t.string   "summarize",    default: "",           null: false
    t.string   "avatar",       default: "",           null: false
    t.string   "weibo_page",   default: "",           null: false
    t.string   "github_page",  default: "",           null: false
    t.string   "twitter_page", default: "",           null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "blog_links", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "link_name",  default: "",    null: false
    t.string   "dest_url",   default: "",    null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "blog_posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title",                    default: "",    null: false
    t.text     "content",    limit: 65535
    t.boolean  "publish",                  default: false, null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "blog_tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tag_name",   default: "",    null: false
    t.boolean  "deleted",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
