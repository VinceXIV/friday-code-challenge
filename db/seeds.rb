# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

heros = []
3.times do
    heros << Hero.create(name: Faker::Name.name, super_name: Faker::Superhero.name)
end

powers = []
10.times do
    powers << Power.create(name: Faker::Superhero.power, description: Faker::Lorem.paragraph_by_chars(number: 21, supplemental: false))
end

hero_power1 = HeroPower.create(strength: "Strong", hero_id: heros[0].id, power_id: powers[0].id)
hero_power2 = HeroPower.create(strength: "Weak", hero_id: heros[1].id, power_id: powers[1].id)
hero_power3 = HeroPower.create(strength: "Average", hero_id: heros[2].id, power_id: powers[2].id)
hero_power4 = HeroPower.create(strength: "Strong", hero_id: heros[2].id, power_id: powers[3].id)