class Page < ActiveRecord::Base
  before_create :generate_slug

  def generate_slug
    self.slug = SecureRandom.hex[0..9]
  end

  def to_param
    slug
  end
end
