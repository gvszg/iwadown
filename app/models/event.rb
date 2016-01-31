# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  link            :string(255)
#  title           :string(255)
#  start_date_time :datetime
#  end_date_time   :datetime
#  intro           :text
#  created_at      :datetime
#  updated_at      :datetime
#  status          :integer          default(1)
#  address         :string(255)
#  user_id         :integer
#

class Event < ActiveRecord::Base
  belongs_to :user
  has_many :event_categories
  has_many :categories, through: :event_categories

  validates_presence_of :link, :title, :start_date_time, :end_date_time, :intro
end
