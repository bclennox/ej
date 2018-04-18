Demand.destroy_all
Demand.create!(description: 'Crib')
Demand.create!(description: 'Crib mattress')
Demand.create!(description: 'Onesies')
Demand.create!(description: 'Swaddles', met: true)
Demand.create!(description: 'Crib sheets', met: true)

Item.destroy_all
Item.create!(description: 'Bottles', sender: 'Lindsay')
Item.create!(description: 'Nipple guards', sender: 'Lindsay')
Item.create!(description: 'Teether', sender: 'Rowan')
Item.create!(description: 'Wipes', sender: 'Brandan')

User.destroy_all
User.create!(username: 'brandan', password: 'nadnarb')
User.create!(username: 'eric', password: 'julie')
User.create!(username: 'julie', password: 'eric')
