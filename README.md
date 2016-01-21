# README

## Alamo Records

Alamo Records is a online store that sells vintage vinyl records. It is built on the Ruby on Rails web framework and consists of the following models:

1. Publisher - a publisher sells albums.
2. Album - albums are sold by publishers and include many songs.
3. Song - a song is recorded onto one album. It is written by one artist or a collaboration of artists.
4. Artist - an artist writes songs.
5. Collaboration - a collaboration is when two or more artists write a song.
6. Movie - a movie can include many songs.

The relationships between models are represented in the following diagram:

![Alamo Records model diagram](public/alamo_records_diagram.png)

## Candidate Instructions

Clone the repository and complete each of the tasks listed below. Tasks include styling changes, adding functionality, fixing bugs and writing tests. Each task should be committed separately into Git with a commit message that includes the task number and the task description.

Complete as many tasks as you can and then submit a pull request through Github.

### Tasks

1. On the publishers index page, change the h1 element to the color #054A91.
2. On the navigation bar, add a link to the songs index page .
3. The albums index page is executing too many queries. Fix it.
4. In the album model, create a scope called __recent__ that returns only the last five albums released during the past year.
5. On the new album page, replace the publisher text field with a dropdown.
4. Make a form post via ajax and write the javascript view
5. fix a bug in model
6. fix a bug in controller
7. fix a bug in view
8. write a model test
9. write a controller test
10. Create the Movie model with the following attributes:
  1. title (string)
  2. year (integer)
  3. rated (string)
  4. plot (text)
  5. poster_url (string)
  6. imdb_rating (float)
  7. imdb_votes (integer)