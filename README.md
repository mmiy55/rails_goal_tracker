# 🌄 Think-Peaks, your Goal Tracker 🙌

Think-Peaks is a app I built to keep track of personal goals in different areas.

## Acknowledgements
Inspired by a Hackathon challenge I found at https://troopl.com/challenges/goal-tracking-app.
The app satisfy the challenge requisites which are :

"Use any language/framework to build a CRUD (create, read, update, delete) web app that lets people:

Create an account
Add a goal 
Update a goal as complete (i.e. a percentage or true/false) 
Visualise complete and incomplete goals 
Delete a goal"

Additionally, I added the following features:

Attach a picture to a goal.
If the user don't select a picture, a random picture will be attached based on the category selected (health, finance, beauty..)

Edit the contents of a goal

Describe furtherly the goal. The description and category of goal can be seen through the About button.


>Create an account 

##Landing Page
 
<img width="620" alt="landing" src="https://user-images.githubusercontent.com/70462015/232055388-06885a70-fcfc-493a-8919-a005b6691093.png">
 
##Sign up (Implemented through Devise)
 
<img width="420" alt="signup" src="https://user-images.githubusercontent.com/70462015/232055426-1cb28187-e37f-44d5-ac81-0cb8869b3cf3.png">

##Logged-in home
 
<img width="620" alt="login" src="https://user-images.githubusercontent.com/70462015/232055410-3455bfae-0e77-437e-a8c5-cef992b03637.png">

>Add a goal 
>Attach a picture to a goal.
>Describe furtherly the goal. 

<img width="420" alt="addgoal" src="https://user-images.githubusercontent.com/70462015/232059846-e017823d-898e-4a14-8ef3-e5ce2f53ecc4.png">

>The description and category of goal can be seen through the About button.



<img width="280" alt="Screen Shot 2023-04-18 at 07 29 28" src="https://user-images.githubusercontent.com/70462015/232624394-4e17b66a-7f32-40a1-bd30-f587cb2ab82f.png">
<img width="280" alt="Screen Shot 2023-04-18 at 07 29 06" src="https://user-images.githubusercontent.com/70462015/232624400-26198999-2ecf-4d95-8a60-f23de3d9800e.png">


>Update a goal as complete

<img width="111" alt="reachact" src="https://user-images.githubusercontent.com/70462015/232056809-99181ad8-1a72-4852-bc17-6c35e54d4541.png">
<img width="320" alt="screen" src="https://user-images.githubusercontent.com/70462015/232624525-5e0bfe22-e3e7-4633-a019-c49416a8b75e.png">

<img width="280" alt="Screen Shot 2023-04-18 at 07 29 44" src="https://user-images.githubusercontent.com/70462015/232624545-06d68a20-8ac2-4200-934c-19f654d9f80a.png">



>Visualise complete and incomplete goals 

<img width="266" alt="trackbtn" src="https://user-images.githubusercontent.com/70462015/232056880-35b36395-3ee3-4ff4-836a-d62b68b5c994.png">

<img width="298" alt="Screen Shot 2023-04-18 at 07 34 18" src="https://user-images.githubusercontent.com/70462015/232624919-3c4c0fe8-d5af-45b8-ad01-8e4a0a872554.png">

<img width="1436" alt="screen" src="https://user-images.githubusercontent.com/70462015/232624799-4ec98ddf-e95d-45df-9d93-82f0e2ec84ad.png">


>Delete a goal"

<br>

<img width="88" alt="deletebtn" src="https://user-images.githubusercontent.com/70462015/232057420-adb87a95-c408-430c-a7ab-f9d158e79346.png">

>Edit the contents of a goal


<img width="64" alt="Screen Shot 2023-04-14 at 22 34 53" src="https://user-images.githubusercontent.com/70462015/232059379-a85526cf-834f-41a6-b4c6-ccef6614b91a.png">

<img width="393" alt="Screen Shot 2023-04-14 at 22 35 06" src="https://user-images.githubusercontent.com/70462015/232059373-d61d448c-522a-49ee-a1c4-cb20c9339594.png">


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
