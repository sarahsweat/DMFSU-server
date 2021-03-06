# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

alum = Team.create({name: "Alumni", photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/13010667_10207942502352401_8554732486194948737_n.jpg?oh=dab559a76d7308aa45f52adb14fcb2b0&oe=5A337EB9'})
core = Team.create({name: "CORE", photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-0/p206x206/13062064_10154410587098132_7172171920890107340_n.jpg?oh=a83b3fce1f7a8a433089bed5ad2615a6&oe=5A377990'})
captains = Team.create({name: "Captains", photo:'https://cdn2.hercampus.com/madison-rep_2.png'})

a = User.create({first_name: "Sarah", last_name: 'Sweat', zip: 11215, team_id: alum.id, photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/12719594_10154330526113132_6360152985690556783_o.jpg?oh=6fa8ed2f8e0eb0a49e4dd3f20c29b0f0&oe=59EFB2B6'})
b = User.create({first_name: "Morgan", last_name: 'Maxwell', zip: 29631, team_id: alum.id, photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12805727_10208560091542609_1869781719810354909_n.jpg?oh=7c509f0a7e262a51eb72aab8928d9285&oe=5A244B21'})
c = User.create({first_name: "Alyssa", last_name: 'Martinez', zip: 33801, team_id: alum.id, photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/11063890_993375487392276_7349993796697209769_o.jpg?oh=cbb3b7a6e7cf8ab47666e0d400054214&oe=5A269AF5'})
d = User.create({first_name: "Sara", last_name: 'Jacobs', zip: 30301, team_id: captains.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12806147_10209363606947536_8101285283611843624_n.jpg?oh=d7baf851f6cb077d34e4f301d6019e28&oe=5A369134'})
e = User.create({first_name: "Alex", last_name: 'Jones', zip: 46077, team_id: core.id, photo: 'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/16472959_1604417019574159_2893133651342506915_n.jpg?oh=528d16bc4fa62481206b5bad53f6d3cf&oe=5A250755'})
f = User.create({first_name: "Andrew", last_name: 'Gallagher', zip: 10031, team_id: alum.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12744051_1151263178220229_536064967724537155_n.jpg?oh=6ef9466745cdd0e46e5898ad46e34083&oe=5A37DBD1'})
g = User.create({first_name: "Haley", last_name: 'Bryant', zip: 30357, team_id: core.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12795517_10208781350674918_1116427388251992084_n.jpg?oh=b13f84853ff485a81f999282890fe869&oe=59F7386E'})
h = User.create({first_name: "Felicia", last_name: 'Steinberg', team_id: alum.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12791067_10207773025378901_6579149201619450770_n.jpg?oh=8d60c536c88418a226314eaec94aa636&oe=59EFEBE7'})
i = User.create({first_name: "Niki", last_name: 'Little', team_id: captains.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/17097425_1430214063687619_4077584214497230584_o.jpg?oh=192e27f2781779a20ec7e3b46d66e969&oe=5A22E6BD'})
j = User.create({first_name: "Bailey", last_name: 'Arrendale', zip: 32073, team_id: core.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/14711671_10209023176710886_2873231754362037017_o.jpg?oh=ac250ab4e1dfcc847df1edd84fccd09e&oe=5A2F5145'})
k = User.create({first_name: "Kelsey", last_name: 'Knutson', zip: 32277, team_id: alum.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12821559_10206133792485689_7640421422319212033_n.jpg?oh=0e3d126c79c48e02cc2b067b5b33b217&oe=5A270455'})
l = User.create({first_name: "Amanda", last_name: 'Strum', zip: 20001, team_id: alum.id, photo:'https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/12654129_10153358317711938_508003073901654612_n.jpg?oh=92e4ad309dced4f1227ea3700dd95bec&oe=59EF02E5'})


Donation.create({amount: 150, donor_id: a.id, dancer_id: b.id})
Donation.create({amount: 500, donor_id: b.id, dancer_id: c.id})
Donation.create({amount: 450, donor_id: c.id, dancer_id: d.id})
Donation.create({amount: 450, donor_id: d.id, dancer_id: e.id})
Donation.create({amount: 150, donor_id: e.id, dancer_id: f.id})
Donation.create({amount: 100, donor_id: f.id, dancer_id: g.id})
Donation.create({amount: 50, donor_id: g.id, dancer_id: h.id})
Donation.create({amount: 50, donor_id: h.id, dancer_id: i.id})
Donation.create({amount: 100, donor_id: i.id, dancer_id: j.id})
Donation.create({amount: 20, donor_id: j.id, dancer_id: k.id})
Donation.create({amount: 100, donor_id: k.id, dancer_id: a.id})
Donation.create({amount: 400, donor_id: l.id, dancer_id: l.id})
Donation.create({amount: 1500, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 150, donor_id: b.id, dancer_id: b.id})
Donation.create({amount: 100, donor_id: c.id, dancer_id: c.id})
Donation.create({amount: 15, donor_id: d.id, dancer_id: b.id})
Donation.create({amount: 150, donor_id: a.id, dancer_id: d.id})
Donation.create({amount: 650, donor_id: a.id, dancer_id: e.id})
Donation.create({amount: 750, donor_id: b.id, dancer_id: a.id})
Donation.create({amount: 150, donor_id: b.id, dancer_id: b.id})
Donation.create({amount: 10, donor_id: b.id, dancer_id: a.id})
Donation.create({amount: 150, donor_id: b.id, dancer_id: i.id})
Donation.create({amount: 50, donor_id: c.id, dancer_id: j.id})
Donation.create({amount: 50, donor_id: c.id, dancer_id: k.id})
Donation.create({amount: 15, donor_id: c.id, dancer_id: l.id})
Donation.create({amount: 150, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: f.id, dancer_id: b.id})
Donation.create({amount: 150, donor_id: g.id, dancer_id: c.id})
Donation.create({amount: 15, donor_id: l.id, dancer_id: a.id})
Donation.create({amount: 50, donor_id: k.id, dancer_id: b.id})
Donation.create({amount: 150, donor_id: f.id, dancer_id: c.id})
Donation.create({amount: 150, donor_id: e.id, dancer_id: a.id})
Donation.create({amount: 100, donor_id: d.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: c.id, dancer_id: b.id})
Donation.create({amount: 200, donor_id: a.id, dancer_id: a.id})
Donation.create({amount: 15, donor_id: b.id, dancer_id: c.id})
