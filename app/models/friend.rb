class Friend < ActiveRecord::Base
  validates :name, :presence => true
  validates :lat, :numericality => true
  validates :lon, :numericality => true

  scope :nearby, lambda { |lat, lon|
    select(" #{self.table_name}.*, SQRT( POW((69.1 * (#{lat} - #{self.table_name}.lat)), 2) + POW((69.1 * (#{lon} - #{self.table_name}.lon) * cos(#{lat}/57.3)), 2)) AS distance").
    where("(#{self.table_name}.lat <> 0) AND (#{self.table_name}.lon <> 0) AND (#{self.table_name}.lat IS NOT NULL) AND (#{self.table_name}.lon IS NOT NULL)").
    order("distance ASC")
  }

  def friends_near_me
    self.class.where("id <> ?", self).nearby(self.lat, self.lon).limit(3)
  end
end
