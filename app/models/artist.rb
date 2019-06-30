class Artist < ActiveRecord::Base
validates_processing_of :painting
validate :image_size_validation

private
  def image_size_validation
    errors[:painting] << "should be less than 500KB" if image.size > 0.5.megabytes
  end
end
