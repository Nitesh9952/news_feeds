module PostHelper

	LIMIT = 50

	def json_template
		{only: [:content], methods: [:type],
		 include: [{ comments: { only: [:content], methods: [:type],
		 include: {user: {only: [:name], methods: [:type]}}}},
		 {user: {only: [:name], methods: [:type]}}]}
	end

	def paginated_recent_posts
		posts = Post.recent
		paginate posts, per_page: LIMIT
	end
end