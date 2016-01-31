# == Schema Information
#
# Table name: event_categories
#
#  id          :integer          not null, primary key
#  event_id    :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class EventCategory < ActiveRecord::Base
  belongs_to :event
  belongs_to :category
end
