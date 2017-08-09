# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alum = Team.create({name: "Alumni"})
core = Team.create({name: "CORE"})

a = User.create({first_name: "Sarah", last_name: 'Sweat', team_id: alum.id})
b = User.create({first_name: "Morgan", last_name: 'Maxwell', team_id: alum.id})
c = User.create({first_name: "Alyssa", last_name: 'Martinez', team_id: alum.id})
d = User.create({first_name: "Sara", last_name: 'Jacobs', team_id: alum.id})
e = User.create({first_name: "Alex", last_name: 'Jones', team_id: core.id})
f = User.create({first_name: "Andrew", last_name: 'Gallagher', team_id: alum.id})
g = User.create({first_name: "Haley", last_name: 'Bryant', team_id: core.id})
h = User.create({first_name: "Felicia", last_name: 'Steinberg', team_id: alum.id})
i = User.create({first_name: "Niki", last_name: 'Little', team_id: core.id})
j = User.create({first_name: "Bailey", last_name: 'Arrendale', team_id: core.id})
k = User.create({first_name: "Kelsey", last_name: 'Knutson', team_id: alum.id})
l = User.create({first_name: "Amanda", last_name: 'Strum', team_id: alum.id})


Donation.create({amount: 15, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 50, donor_id: a.id, dancer_id: c.id})
Donation.create({amount: 45, donor_id: a.id, dancer_id: d.id})
Donation.create({amount: 45, donor_id: a.id, dancer_id: e.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: f.id})
Donation.create({amount: 10, donor_id: a.id, dancer_id: g.id})
Donation.create({amount: 5, donor_id: a.id, dancer_id: h.id})
Donation.create({amount: 5, donor_id: a.id, dancer_id: i.id})
Donation.create({amount: 10, donor_id: a.id, dancer_id: j.id})
Donation.create({amount: 20, donor_id: a.id, dancer_id: k.id})
Donation.create({amount: 100, donor_id: b.id, dancer_id: a.id})
Donation.create({amount: 40, donor_id: a.id, dancer_id: l.id})
Donation.create({amount: 30, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 10, donor_id: a.id, dancer_id: c.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: d.id})
Donation.create({amount: 65, donor_id: a.id, dancer_id: e.id})
Donation.create({amount: 75, donor_id: a.id, dancer_id: f.id})
Donation.create({amount: 150, donor_id: a.id, dancer_id: g.id})
Donation.create({amount: 10, donor_id: a.id, dancer_id: h.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: i.id})
Donation.create({amount: 5, donor_id: a.id, dancer_id: j.id})
Donation.create({amount: 5, donor_id: a.id, dancer_id: k.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: l.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: c.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 5, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: c.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 10, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 20, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: a.id, dancer_id: c.id})