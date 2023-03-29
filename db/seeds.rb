# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

User.destroy_all
Goal.destroy_all

def create_admin
  unless find_by(email: 'admin@me.com') do
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


end


new_user = User.find_by(email: 'new@test.com') || User.create!(email: 'new@test.com', password: 'password', first_name: 'Yoshiko', last_name: 'Takagi')


goals = Goal.create!([
  {

  },
  {

  },
  {

  }
]
)
