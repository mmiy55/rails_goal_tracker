require "open-uri"

User.destroy_all
Goal.destroy_all

admin = User.find_by(email: 'admin@me.com') || User.create!(
      email: 'admin@me.com',
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
    user: admin
},
{
    title: "Read one book a month",
    category: "education",
    user: admin
},
{
    title: "Find a job",
    category: "career",
    user: admin
},
{
    title: "Cook",
    category: "health",
    user: admin
}])
