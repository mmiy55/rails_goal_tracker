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

 Landing Page
<img width="420" alt="landing" src="https://user-images.githubusercontent.com/70462015/232055388-06885a70-fcfc-493a-8919-a005b6691093.png">

 Sign up (Implemented through Devise)
<img width="420" alt="login" src="https://user-images.githubusercontent.com/70462015/232055410-3455bfae-0e77-437e-a8c5-cef992b03637.png">

 Logged-in home
<img width="420" alt="signup" src="https://user-images.githubusercontent.com/70462015/232055426-1cb28187-e37f-44d5-ac81-0cb8869b3cf3.png">

>Add a goal 
>Attach a picture to a goal.
>Describe furtherly the goal. 

<img width="420" alt="addgoal" src="https://user-images.githubusercontent.com/70462015/232059846-e017823d-898e-4a14-8ef3-e5ce2f53ecc4.png">

>The description and category of goal can be seen through the About button.

<img width="310" alt="Screen Shot 2023-04-14 at 22 34 41" src="https://user-images.githubusercontent.com/70462015/232059265-1521a3e1-41fe-44b3-939c-e90408d8a7a9.png">
<img width="312" alt="Screen Shot 2023-04-14 at 22 34 47" src="https://user-images.githubusercontent.com/70462015/232059298-73e264c7-884e-4474-9e9a-69e7a57ce6b7.png">

>Update a goal as complete

<img width="111" alt="reachact" src="https://user-images.githubusercontent.com/70462015/232056809-99181ad8-1a72-4852-bc17-6c35e54d4541.png">

<img width="768" alt="ongoing" src="https://user-images.githubusercontent.com/70462015/232056827-dd29953b-a9bd-49b6-a87d-96d2f2f194a6.png">

<img width="773" alt="reached" src="https://user-images.githubusercontent.com/70462015/232056335-6a0ef406-cc89-4de8-978c-8df76316a5b2.png">

>Visualise complete and incomplete goals 
<img width="266" alt="trackbtn" src="https://user-images.githubusercontent.com/70462015/232056880-35b36395-3ee3-4ff4-836a-d62b68b5c994.png">
<img width="1146" alt="track" src="https://user-images.githubusercontent.com/70462015/232056885-01673231-e3be-4c4e-9835-c5ce9879c9bd.png">


>Delete a goal"

<br>
<img width="1143" alt="ong" src="https://user-images.githubusercontent.com/70462015/232057415-10cbf3cc-72a6-41b7-8a41-e1f16fdfdb22.png">

<img width="88" alt="deletebtn" src="https://user-images.githubusercontent.com/70462015/232057420-adb87a95-c408-430c-a7ab-f9d158e79346.png">

<img width="450" alt="delete" src="https://user-images.githubusercontent.com/70462015/232057414-b7a6c050-35a9-4476-985d-1d5ae505a27b.png">

<img width="1146" alt="gone" src="https://user-images.githubusercontent.com/70462015/232057407-accd1611-8d0a-4421-8f2c-029e97d32644.png">

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
- [Figma](https://www.figma.com) — Prototyping
