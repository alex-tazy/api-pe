class Feed < ApplicationRecord
  has_and_belongs_to_many :tags

  scope :price, -> (price) { where price: price }
  scope :by_tags, -> (tag_id) { joins(:tags).where(tags: { id: tag_id }) }
  scope :by_hours, -> (time) { where "hours >= #{time}" }

  def self.filter(filter_params)
    results = self.where(nil)
    filter_params.each do |key, value|
      results = results.public_send(key, value) if value.present?
    end
    results
  end
end
