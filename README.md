# Project: Rails Final Project

https://www.theodinproject.com/lessons/ruby-on-rails-rails-final-project

---

## Assignment

Build a social media site! You’ll build a large portion of the core user functionality of your chosen site in this project. You don’t have to worry about some of the more flashy front-end stuff unless you want to, but you don’t need it to get a nice user experience.

You’ll be building a clone of a social media site, such as Facebook, X, Myspace, or Threads. As with our previous lessons, how much effort you want to put into the styling and front end is up to you. The important stuff is the data and backend. You’ll put together the core features of the platform like users, profiles, posts, following, and “liking”.

---

## Post-project review

The hardest part of this project was getting the association between users following each other. I eventually got an association established, but it seems to not be the ideal way of implementing it. I also tried using Bulma for the first time, which was interesting...

I didn't implement everything that was listed in the project description; specifically welcome emails and profile pictures, although I partially implemented the welcome emails. There's no instructions for setting up the emails with devise in TOP's course, the rails guides, devise's github docs or letter opener's github docs. I found a walkthrough after some searching, but it was for Rails 7 and didn't seem to work, which might be because I'm on 8.

For the profile pictures, the project page recommends Gravatar, which really doesn't look appealing. My goal isn't to force users to sign up for unrelated services. I also looked at Omniauth, but that would require actually deploying the website.

At the end of the day, the basics that were taught in the course were implemented. Everything else just seemed like they asked for something and said "Just figure it out".

---

## DB Brainstorming

Users
    has many posts, inverse of: 'author'
    has many comments
    has many commented_posts, through comments, inverse of 'author'
    has many likes
    has many liked_posts, through 'likes', inverse of: 'user_likes'
    has many followings
    has many followers, through: 'followings', inverse of: 'followee'
    has many followees, through: 'followings', inverse of: 'follower'
    has many following_requests
    has many follower_requests, through: 'following_requests', inverse of: 'follow_recipent'
    has many followee_requests, through: 'following_requests', inverse of: 'follow_submitter'

    id
    username
    email
    password

Posts
    belongs to author, class name 'User'
    has many comments
    has many likes
    has many commenters, though comments
    has many user_likes, through 'likes', inverse of: 'liked_posts'
    
    id
    author_id
    title
    body

Comments
    belongs to author, class name 'User'
    belongs to post
    
    id
    author_id
    comment
    
user_follow_requests
    belongs to follow_recipient, class name 'User'
    belongs to follow_submitter, class name 'User'

    follow_recipient_id
    follow_submitter_id
    
user_follows
    belongs to follower, class name 'User'
    belongs to followee, class name 'User'

    follower_id
    followee_id
    
Likes
    belongs to users
    belongs to posts
    
    user_id
    post_id# rails-final-project
