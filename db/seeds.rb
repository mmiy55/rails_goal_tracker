require "open-uri"

User.destroy_all
Goal.destroy_all

admin = User.find_by(email: 'miriam@me.com') || User.create!(
      email: 'miriam@me.com',
      password: '123123'
    )
# give an AI face to the admin
url = 'https://this-person-does-not-exist.com/en'
doc = Nokogiri::HTML(URI.open(url).read)
src = doc.search('#avatar').first['src']
photo_url = "https://this-person-does-not-exist.com#{src}"
file = URI.open(photo_url)
admin.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')


# TODO: real seeds
# TODO: attach photo from unsplash

Goal.create([{
    title: "Lose weight",
    category: "health",
    description: "Lose 5kg before Christmas",
    user: admin
},
{
    title: "Read",
    category: "education",
    description: "Read one book this month",
    user: admin
},
{
    title: "Find a job",
    category: "career",
    description: "Find a job by the end of the month",
    user: admin
},
{
    title: "Cook",
    category: "diet",
    description: "Cook at least one meal a day",
    user: admin
}])

Goal.all.each do |goal|
  photo_url = "https://source.unsplash.com/random/240x120/?#{goal.category}"
  file = URI.open(photo_url)
  goal.photo.attach(io: file, filename: 'default.png', content_type: 'image/png')
  goal.save
end
