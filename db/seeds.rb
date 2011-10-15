# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

actionarium = Sponsor.create :name => "Actionarium"
action = Action.create :sponsor_id => actionarium.id, :name => "Start a company"
Incentive.create :action_id => action.id, :name => "20 minutes of designer time", :sponsor_id => actionarium.id
