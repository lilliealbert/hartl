namespace :db do
  describe "Fill database with sample data"
  task populate: :environment do
    admin = User.create!( name: "Admin Cat",
                  email: "cat@example.cat",
                  password: "password",
                  password_confirmation: "password")
    admin.toggle!(:admin)
    99.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@example.cat"
      password = "password"
      User.create!( name: name,
                    email: email,
                    password: password,
                    password_confirmation: password)
    end
  end
end