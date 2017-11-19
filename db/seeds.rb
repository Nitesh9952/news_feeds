# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10000.times do |i|
	user = User.create(name: "User-#{i}")
end


1000000.times do |i|
	post = Post.create(content: "Post Content-#{i}", user_id: (1..10000).to_a.shuffle.first)
	(2..4).to_a.shuffle.first.times do |j|
		Comment.create(user_id: (1..10000).to_a.shuffle.first, post_id: post.id, content: "Comment Content-#{j}")
	end
	puts post.inspect
	puts post.comments.inspect
	sleep (1..3).to_a.shuffle.second
end