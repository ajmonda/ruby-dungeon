# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

equipment = {
  sword: {
    name: 'Debugger',
    description: 'Though some may have preferred a more angular blade, this lightweight and versatile weapon is modularized for a quicker react time.',
    image: 'https://i.imgur.com/zDTNri4.png'
  },
  helmet: {
    name: 'Headphones',
    description: "Bolster your resolve and drown out the siren's call of resignation and fatigue with that weird techno music you listen to.",
    image: 'https://i.imgur.com/5GjCN8C.png'
  },
  shield: {
    name: 'Coarse Shield',
    description: 'It always manages to get in the way, despite its origin and purpose being a complete mystery.',
    image: 'https://i.imgur.com/3AMriUA.png'
  },
  spellbook: {
    name: 'The Documentation',
    description: 'A holy tome of powerful spells attributed to the Anciet Ones... though no one has actually read it. Use its effects wisely!',
    image: 'https://i.imgur.com/iLZeyX9.png'
  }
}


UserEquip.destroy_all
Equip.destroy_all
User.destroy_all

admin = User.create!(username: 'admin', password: 'test')
user1 = User.create!(username: 'user1', password: 'test')
puts "#{User.count} users created"

equipment.each do | key, value |
  Equip.create!(value)
end
puts "#{Equip.count} equipment created"

UserEquip.create!(user_id: 1, equip_id: 2, is_equipped: true)
UserEquip.create!(user_id: 1, equip_id: 1, is_equipped: false)
UserEquip.create!(user_id: 2, equip_id: 2, is_equipped: false)
puts "#{UserEquip.count} joins created"


# torch = Item.create(user: admin, name: 'Torch', description: 'Fairly cheap light source with little risk of burning down your entire town.', image: 'https://i.imgur.com/uqt67XE.png', equipped: false)