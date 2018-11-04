# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
Comment.destroy_all
Message.destroy_all
User.destroy_all


hash_users = 10.times.map do 
	{
		name: FFaker::Internet.user_name[0...9],
		email: FFaker::Internet.safe_email,
	}
end

users = User.create! hash_users
users.first(4).each {|u| u.update creator: true}
users.first(2).each {|u| u.update moderator: true}
creators = User.where( creator: true)


hash_messages =  15.times.map do
{
	content: FFaker::HipsterIpsum.paragraph,
	title: FFaker::HipsterIpsum.paragraph[10...35],
	user: creators.sample
}
end
messages = Message.create! hash_messages


hash_comments = 105.times.map do
	commentable = ((rand(2) == 1) ? messages : users).sample
{
	content: FFaker::HipsterIpsum.paragraphs[1...140],
	user: users.sample,
	commentable_id: commentable.id, 
	commentable_type: commentable.class.to_s
}
end
Comment.create! hash_comments
