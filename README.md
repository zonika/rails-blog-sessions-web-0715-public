---
tags: rails, sessions, WIP
language: ruby
resources: 1
---

# Rails Blog: Sessions

We built out a user model a while back, but we haven't been doing much with it. Let's build out a login system that prevents a user from writing a blog post or a comment without logging in. For now, we're going to build our own log in with sessions. For

## Sessions 

Session allow an application to keep track of a user and allow them to perform actions that are remembered by the application without authenticating on every request. A session is comprised of a hash of values, usually a user's id, name and other information, and most importantly, a session id. Learn more from the documentation on [sessions in rails](http://guides.rubyonrails.org/security.html#sessions).


TODO