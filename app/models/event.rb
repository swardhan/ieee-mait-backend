class Event < ApplicationRecord
	has_one_attached :event_image

	def event_image_url
		Rails.application.routes.url_helpers.rails_blob_url(self.event_image)
	end
end
