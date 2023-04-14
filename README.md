# 📚 Think-Peaks, your Goal Tracker

Think-Peaks is a app I built to keep track of personal goals in different areas.

## Acknowledgements
Inspired by a Hackathon challenge I found at https://troopl.com/challenges/goal-tracking-app.
The app satisfy the challenge requisites which are :

"Use any language/framework to build a CRUD (create, read, update, delete) web app that lets people:

>Create an account




>Add a goal 
>Update a goal as complete (i.e. a percentage or true/false) 
>Visualise complete and incomplete goals 
>Delete a goal"

<br>


<br>

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

### Run webpack
```
yarn build --watch
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping
