require "open-uri"

User.destroy_all
Goal.destroy_all

def create_admin
  return if find_by(email: 'admin@me.com')
    # create the admin
    User.create!(
      email: 'admin@me.com',
      password: '123123'
    )
    # give an AI face to the admin (1/2)
    url = 'https://this-person-does-not-exist.com/en'
    doc = Nokogiri::HTML(URI.open(url).read)
    src = doc.search('#avatar').first['src']
    photo_url = "https://this-person-does-not-exist.com#{src}"
    file = URI.open(photo_url)
    user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
end

Goal.create([{
    title: "test.#{rand(0..10)}",
    category: Goal.categories.sample,
    user: find_by(email: 'admin@me.com')
},
{
    title: "test.#{rand(0..10)}",
    category: Goal.categories.sample,
    user: find_by(email: 'admin@me.com')
},
{
    title: "test.#{rand(0..10)}",
    category: Goal.categories.sample,
    user: find_by(email: 'admin@me.com')
}])
