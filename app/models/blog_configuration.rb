class BlogConfiguration < ApplicationRecord
  validates :headline, :banner, :begin_time, :end_time, :avatar, :summarize, presence: true
  validates_length_of :summarize, maximum: 50
end
