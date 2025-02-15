class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods

  include Reservable::InstanceMethods
  extend Reservable::ClassMethods

  def city_openings(start_date, end_date)
    openings(start_date, end_date)
  end


end

