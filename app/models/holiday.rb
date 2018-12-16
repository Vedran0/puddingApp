# == Schema Information
#
# Table name: holidays
#
#  id         :integer          not null, primary key
#  date       :date
#  name       :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Holiday < ActiveRecord::Base

  validates_presence_of :name, :message, :date
  validates_length_of :name, :maximum => 15

  scope :order_by_date, -> { order(date: :asc) }

  def self.today
    Date.today.change(year: 2000)
  end

  def self.next
    today = Holiday.today
    return order_by_date.first if order_by_date.last.date < today
    order_by_date.each do |holiday|
      return holiday if holiday.date >= today
    end
  end

  def is_it_today?
    Date.today.change(year: 2000).midnight == date.midnight ? true : false
  end

  def next?
    self == Holiday.next ? true : false
  end

end
