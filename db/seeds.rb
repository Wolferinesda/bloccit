require 'random_data'

15.times do
  Topic.create!(
      name: RandomData.random_sentence,
      description: RandomData.random_paragraph
  )
end
topics = Topic.all

50.times do
  Post.create!(
      topic: topics.sample,
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph
  )
end

#Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

#Create Comments
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{Post.count}"
originalPost = Post.find_or_create_by!(
  title: "Unique post title",
  body: "Unique post body"
)

puts "#{Post.count}"
Comment.find_or_create_by!(
  post: Post.find(originalPost.id),
  body: "Unique comment body"
)

puts "#{Post.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Topic.count} topics created"
