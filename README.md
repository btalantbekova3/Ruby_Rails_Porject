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

### Clone the Repository

```bash
git clone <repository-url>
cd bermetstore
```

### Install Dependencies

```bash
bundle install
```

### Setup Database

```bash
rails db:create
rails db:migrate
rails db:seed
```

### Edit Credentials

```bash
EDITOR="code --wait" rails credentials:edit
```

Example:

```yaml
admin:
  email: admin@gmail.com
  password: password123
```

### Run the Application

```bash
bin/dev
```

or

```bash
rails server
```

Open:

```text
http://localhost:3000
```

## Authentication

Devise is used for user registration and login.

Example commands used:

```bash
rails generate devise:install
rails generate devise User
rails db:migrate
```

## Friendly URLs

FriendlyId is used to generate URLs based on titles.

Example:

```text
/posts/learn-ruby-on-rails
```

instead of:

```text
/posts/1
```

## Resources

FriendlyId:
https://rubygems.org/gems/friendly_id

Tailwind CSS:
https://tailwindcss.com

Devise:
https://github.com/heartcombo/devise

## Future Improvements

* Categories and tags
* User subscriptions
* Premium content access
* Comments and ratings
* Video progress tracking
* Dark mode support

## Author

Bermet Talanbekova

Computer Science Graduate, Georgia Tech




<img width="1242" height="452" alt="image" src="https://github.com/user-attachments/assets/b8648251-53e9-4e3f-a3c5-00768550ed8f" />

<img width="1230" height="459" alt="image" src="https://github.com/user-attachments/assets/24e79808-778a-4b1e-98a0-94e83fe53679" />

<img width="1233" height="451" alt="image" src="https://github.com/user-attachments/assets/2a499a36-69eb-48d7-90fa-e6dddaf3236a" />





