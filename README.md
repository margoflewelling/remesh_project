### Description
  Very simplified Remesh application. Conversations have different message threads with commented thoughts. On the app you can create new conversations, messages, and thoughts. 



### SetUp
App uses Ruby 2.5.3 & Rails 6.0.3

1. Clone the repo
```sh
git clone git@github.com:margoflewelling/remesh_mf.git
```
2. From your cli
  - CD into the repository ```cd remesh_mf```
  - Run ```bundle install``` to get all gems needed
  - Run ```rails db:create && db:migrate && db:seed``` to set up the database

3. To see the app in action
  - Run ```rails s```
  - Navigate to localhost:3000 in your browser

### Testing
 - Run ```bundle exec rspec```
 - Should have 17 passing tests

### Additional Thoughts
 - Fun little project, hard to know when to stop working. Main things to continue working on would be LOTS of styling and it would be cool to have the search functionality be dynamic when typing.
