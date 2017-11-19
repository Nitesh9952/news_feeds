class NewsfeedController < ApplicationController
	include PostHelper

	def index
		posts = paginated_recent_posts
		render json: posts.as_json(json_template)
	end
end