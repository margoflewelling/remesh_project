###Description
  Very simplified Remesh application. Conversations have different message threads with commented thoughts.


### SetUp
App uses Ruby 2.5.3 & Rails 6.0.3

1. Clone the repo
```sh
git clone git@github.com:margoflewelling/remesh_mf.git
```
2. Open the CLI
  - CD into the repository ```cd remesh_mf```
  - Run ```bundle install``` to have all gems needed
  - Run ```rails db:create && db:migrate && db:seed```

3. On the CLI open your local host
  - ```rails s```
  - Navigate to localhost:3000

### Testing
 - Run ```bundle exec rspec```
 - Should have 17 passing tests

### Additional Thoughts
 - Fun little project, hard to know when to stop working. Main things to continue working on would be LOTS of styling and it would be cool to have the search functionality be dynamic when typing.
