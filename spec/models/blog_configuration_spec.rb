require 'rails_helper'

RSpec.describe BlogConfiguration, type: :model do
  before(:each) do
    @init_config = BlogConfiguration.new({headline: "headline",
                                          banner: "banner",
                                          begin_time: Time.now,
                                          end_time: Time.now + 1.days,
                                          avatar: "avatar",
                                          summarize: "summarize"})
  end

  it "is valid with headline, banner, begin_time, end_time, avartar, summarize" do
    expect(@init_config).to be_valid
  end

  it "is valid without summarize" do
    @init_config.summarize = nil
    @init_config.valid?
    expect(@init_config.errors[:summarize]).to include("can't be blank")
  end

  it "is invalid without headline" do
    @init_config.headline = nil
    @init_config.valid?
    expect(@init_config.errors[:headline]).to include("can't be blank")
  end
  it "is invalid without banner" do
    @init_config.banner = nil
    @init_config.valid?
    expect(@init_config.errors[:banner]).to include("can't be blank")
  end

  it "is invalid without begin_time" do
    @init_config.begin_time = nil
    @init_config.valid?
    expect(@init_config.errors[:begin_time]).to include("can't be blank")
  end

  it "is invalid without end_time" do
    @init_config.end_time = nil
    @init_config.valid?
    expect(@init_config.errors[:end_time]).to include("can't be blank")
  end

  it "is invalid without avatar" do
    @init_config.avatar = nil
    @init_config.valid?
    expect(@init_config.errors[:avatar]).to include("can't be blank")
  end

  it "is invalid with more than 50 characters summarize" do
    @init_config.summarize = (0..100).to_a.to_s
    @init_config.valid?
    expect(@init_config.errors[:summarize]).to include("is too long (maximum is 50 characters)")
  end

end
