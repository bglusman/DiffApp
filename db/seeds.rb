# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sponsor = Sponsor.create :name => "Actionarium"
action = Action.create :sponsor_id => sponsor.id, :name => "Start a company"
Incentive.create :action_id => action.id, :name => "20 minutes of designer time", :description => "These are the details of the incentive.", :sponsor_id => sponsor.id

sponsor = Sponsor.create :name => "ForProfit LLC"
action = Action.create :sponsor_id => sponsor.id, :name => "Contribute to Rails"
Incentive.create :action_id => action.id, :name => "Free food", :description => "We'll give you some food", :sponsor_id => sponsor.id

sponsor = Sponsor.create :name => "NonProfit Inc"
action = Action.create :sponsor_id => sponsor.id, :name => "Teach a cooking class"
Incentive.create :action_id => action.id, :name => "Free beer", :description => "We'll give you some beer", :sponsor_id => sponsor.id
