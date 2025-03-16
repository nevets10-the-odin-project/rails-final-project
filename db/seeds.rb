# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

ActiveRecord::Base.connection.reset_sequence!('users', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('user_follow_requests', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('user_follows', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('posts', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('comments', 'id', 1)
ActiveRecord::Base.connection.reset_sequence!('likes', 'id', 1)

[
  { username: 'Nevets', email: 'nevets@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Bob', email: 'bob@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Phil', email: 'phil@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Alice', email: 'alice@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Jane', email: 'jane@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Darwin', email: 'darwin@example.com', password: 'password', password_confirmation: 'password' },
  { username: 'Athena', email: 'athena@example.com', password: 'password', password_confirmation: 'password' }
].each do |user|
  User.create!(user)
end

[
  { follow_recipient_id: 1, follow_submitter_id: 2 },
  { follow_recipient_id: 3, follow_submitter_id: 4 }
].each do |follow_request|
  UserFollowRequest.create!(follow_request)
end

[
  { follower_id: 1, followee_id: 4 },
  { follower_id: 4, followee_id: 2 },
  { follower_id: 1, followee_id: 6 },
  { follower_id: 3, followee_id: 7 },
  { follower_id: 5, followee_id: 3 }
].each do |follow|
  UserFollow.create!(follow)
end

[
  { author_id: 1, title: 'Neque porro quisquam est qui dolorem ipsum',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
  { author_id: 2, title: 'Donec cursus nibh sem',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
  { author_id: 3, title: 'Sed vitae orci lacinia, volutpat tellus id, sollicitudin est',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
  { author_id: 4, title: 'In tincidunt accumsan nisl sed pellentesque',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' },
  { author_id: 5, title: 'At vero eos et accusamus et iusto',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.' }
].each do |post|
  Post.create!(post)
end

[
  { author_id: 1, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 2, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 3, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 4, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 5, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 6, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 7, post_id: 1,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 1, post_id: 2,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 2, post_id: 2,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 3, post_id: 3,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 4, post_id: 4,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 5, post_id: 5,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 6, post_id: 3,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' },
  { author_id: 7, post_id: 4,
    comment: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' }
].each do |comment|
  Comment.create!(comment)
end

[
  { user_id: 1, post_id: 1 },
  { user_id: 2, post_id: 1 },
  { user_id: 3, post_id: 1 },
  { user_id: 4, post_id: 1 },
  { user_id: 5, post_id: 1 },
  { user_id: 6, post_id: 1 },
  { user_id: 7, post_id: 1 },
  { user_id: 1, post_id: 2 },
  { user_id: 2, post_id: 2 },
  { user_id: 3, post_id: 3 },
  { user_id: 4, post_id: 3 },
  { user_id: 5, post_id: 4 },
  { user_id: 6, post_id: 4 },
  { user_id: 7, post_id: 5 },
  { user_id: 1, post_id: 5 },
  { user_id: 2, post_id: 4 },
  { user_id: 3, post_id: 4 },
  { user_id: 4, post_id: 2 },
  { user_id: 5, post_id: 2 },
  { user_id: 6, post_id: 3 },
  { user_id: 7, post_id: 3 }
].each do |like|
  Like.create!(like)
end
