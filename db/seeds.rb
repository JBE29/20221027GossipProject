require 'faker'
User.destroy_all
City.destroy_all
Gossip.destroy_all


10.times do
    User.create!(first_name:Faker::Name.first_name,
        last_name:Faker::Creature::Bird.silly_adjective,
        description:Faker::TvShows::BigBangTheory.quote,
        email:Faker::Address.street_address,
        age: rand(7..77),
        city: name.sample)
end

10.times do
    City.create!(name:Faker::Address.city,
                zip_code:Faker::Address.zip_code)
end
