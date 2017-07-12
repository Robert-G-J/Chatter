![travis-ci](https://travis-ci.org/Robert-G-J/Chatter.svg?branch=master)
# Simplified chat bot with canned responses and admin editor interface


## How to run me:
Clone this repo and then:
```
$ cd path/to/project
$ bundle install
$ rails server
```

## Run tests:
```
$ rspec
```

## User Stories
These were constructed from the specification(below):
```
As a student
So that I can revise
I want to see mathematics questions

As a student,
I want to pick a topic to revise
So that I can improve in that topic

As a student,
I want to see a message I can send
So that I can practice this question type

As a student,
I want to choose an answer,
So that I might see if I'm correct

As a student,
I want to see if I'm correct,
So that I might improve.

As a student,
So that I don't get bored,
I want the game to end and not continue indefinitely
```
---
```
As the chatbot administrator
I want to be able to log in securely
So that I can control the chatbot

As the chatbot adminstrator
I want to view the game chat structure
So that I can monitor efficacy

As the chatbot adminstrator
I want to add new chat routes
So that I can offer more questions
```
## Tree

![tree](	https://s3.eu-west-2.amazonaws.com/ra-im/tree.png)


## Technologies

* Ruby 2.4.1
* Rails 5.1.2
* Test framework: RSpec
* VCS: GIT

## Approach

1. Write user stories that met the given specification
2. Create CRC cards with post-its. These yielded the objects, 'Message', 'Response', 'Node'.
3. Analyse data structure; it appears that in its simplest form this task forms the structure of a binary tree. Acknowledged this and moved onto:
4. Feature test for a user seeing a pre-written message to send to the bot
5. Feature test for a user seeing a bot response
6. Create associations that describe the binary tree: messages _have many_ responses; responses _belong to_ messages

## What I intend to do next:
1. Make a single response appear when a message is 'submitted'
  - Messages are never actually submitted here. Every time a _message_ is selected, it sends a GET request to the Rails server for the next _response_.
2. Create a tree of node objects, with each node composed of a _message_ and _response_ object.
3. Generate administrative backend and UI for modifying the tree.

----------
# Specification

* Ruby 2.4.1
* Rails 5.1.2
* Test framework: RSpec
* VCS: GIT

## Description

A user lands on the page and sends the first pre-written message to the bot (this is the root of the tree), they receive a response, for which they are then are presented with 2-3 optional possible pre-written messages to choose from to send back, each of which lead to a new 'response' from from the bot, and so on.

At particular points the response they choose may also lead to the end of the game (end is simply pass / fail).

All routes down the message tree should ultimately end in a pass/fail.

## Admin / backend:

* Authorisation system
* Ability to view / edit the current game chat 'flow' and add to it
* Ability to mark a message the user receives as triggering the end of the game (with success or failure), otherwise the message received should give 2-3 possible responses the user will be able to choose

## User / Front end:

* First message from bot shown to user after short delay
* Available choices of response can be cycled through, allows user to pick one and 'send'
* Corresponding response message comes back from bot after short delay
* Repeat above steps until game end is triggered by one of the responses
* Present game end screen (pass / fail) and option to replay

## Bonus points

* Add some feature specs
* Make it feel 'chatty' by implying the bot is typing during the delay periods
* Stats dashboard showing # of times game played, # times completed, # of wins, # of losses, # of replays and anything else you feel is appropriate
