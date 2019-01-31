# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
    user = User.create!(name: Faker::Name.name)
end

20.times do
    link = Link.create!(content: Faker::Dota.quote, user: User.all[rand(User.count)])
end

40.times do
    comment = Comment.create!(content: Faker::LeagueOfLegends.quote, user: User.all[rand(User.count)], 
    link: Link.all[rand(Link.count)])
end

30.times do
    commentofcomment = CommentOfComment.create!(content: Faker::Dota.item, user: User.all[rand(User.count)],
    comment: Comment.all[rand(Comment.count)])
end




