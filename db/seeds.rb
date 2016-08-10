# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Character.create(
  [
    {
      name: 'Phantom Assassin',
      base_stat: 'Agility',
      ranged: false
    },
    {
      name: 'Sven',
      base_stat: 'Strength',
      ranged: false
    },
    {
      name: 'Centaur',
      base_stat: 'Strength',
      ranged: false
    },
    {
      name: 'Anti Mage',
      base_stat: 'Agility',
      ranged: false
    },
    {
      name: 'Medusa',
      base_stat: 'Agility',
      ranged: true
    },
    {
      name: 'Dazzle',
      base_stat: 'Intelligence',
      ranged: true
    },
    {
      name: 'Disruptor',
      base_stat: 'Intelligence',
      ranged: true
    },
    {
      name: 'Lone Druid',
      base_stat: 'Agility',
      ranged: false
    },
    {
      name: 'Undying',
      base_stat: 'Strength',
      ranged: false
    },
    {
      name: 'Omniknight',
      base_stat: 'Intelligence',
      ranged: false
    },
    {
      name: 'Slawwdawww',
      base_stat: 'Strength',
      ranged: false
    }
  ]
)
