# Coding Challenge: Playlists

Welcome to the coding challenge.

This challenge will give us an idea about your coding skills. Don't worry if you can't finish all requirements in time. Just tell us how you would proceed.

We're using Rails 4, RSpec 3.5 etc.

In the `csv` folder you find some data files.

## Endpoints

To get HTML page with users:
```
GET /users/
```

To access to the JSON endpoint:
```
GET /api/v1/users/
```

## Import from CSV

To import from csv use rake tasks:


To import users data:
```bash
bundle exec rake import_from_csv:import_users
```

To import mp3 data:
```bash
bundle exec rake import_from_csv:import_mp3
```

To import playlists (import users and mp3 data first):
```bash
bundle exec rake import_from_csv:import_playlist
```

## The process

1. Created rails application using Rails 5, pg 1.0.0, rspec-rails 3.7
2. Created User model and migration
3. Created rake task for importing User model from CSV
4. Created controller/view to show a list of users
5. Created REST API endpoint to show a list of users
6. Implemented Playlist, Mp3Entity models and migrations. Also PlaylistEntity for many-to-many relationship
7. Created rake task for importing Playlist and Mp3 models from CSV

## Testing

Testing
```bash
bundle exec rspec
```
or
```bash
bin/rspec
```


Code Quality
Use
```bash
bin/quality
```
to run rubocop and rails_best_practices for code quality checking


For CI use
```bash
bin/ci
```

## Tasks

- Create a rails application within this repo and commit as usual
- Update the README inside with information on how to work with it if you think that some information might be helpful
- Set up an appropriate data model for the data in the csv files
- Create an import for the users
- Create a simple controller/view to show a list of users
- Create a simple REST API endpoint that returns a list of users as json. The REST API can be treated as internal only so no authentication/authorization is needed here.
- Create an import for the playlists and mp3
- Extend the users view to also show the playlists each user has
