# BermetStore

BermetStore is a simple Ruby on Rails 8 web application for sharing educational videos and audiobooks. Users can browse content, search by title, and watch embedded YouTube videos. Authentication is handled with Devise, and clean URLs are generated using FriendlyId.

<img width="1512" height="883" alt="image" src="https://github.com/user-attachments/assets/add59eaf-89c1-475f-b43f-b2870478ef08" />


## Features

* View lessons and audiobooks
* Search content by title or description
* Watch YouTube videos directly on the site
* User authentication with Devise
* Friendly URLs using FriendlyId
* Responsive UI built with Tailwind CSS
* Admin content management through Rails scaffolds

## Technologies

* Ruby on Rails 8
* PostgreSQL
* Tailwind CSS
* Devise
* FriendlyId
* Turbo
* Stimulus

## Models

### Post

```ruby
rails g scaffold Post title:string description:text thumbnail_url:string video_url:string pro:boolean
```

### Audiobook

```ruby
rails g scaffold Audiobook title:string description:text thumbnail_url:string video_url:string pro:boolean
```

## Gems Used

* devise
* friendly_id
* faker
* pg

## Setup Instructions
