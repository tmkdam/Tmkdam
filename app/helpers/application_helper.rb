module ApplicationHelper

	def get_newest_album
		Album.order(:released_on).last.id
	end
end
