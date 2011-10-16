# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


action = Action.create :name => "help with reading difficulties.", :description => "Teachers who are experts in learning difficulties help with task and puzzle design."
Incentive.create  :action_id => action.id,
                  :name => "give you a massage.",
                  :description => "You can come to my studio for a complimentary 30 minute massage, must be local"


action = Action.create  :name => "used bike parts.",
                        :description => "Philadelphia Neighborhood Bikeworks runs the Bike 'Church' " +
                          "and needs bikes and spare parts to repair and " +
                          "provide to low income families for environmentally friendly transportation"
Incentive.create  :action_id => action.id,
                  :name => "buy you a beer.",
                  :description => "If you're local, I'll get a beer with you.  If not, you can grab it " +
                    "when you're in town or I can call your local bar and pick up the tab!"

action = Action.create :name => "", :description => ""
Incentive.create :action_id => action.id, :name => ""

action = Action.create :name => "", :description => ""
Incentive.create :action_id => action.id, :name => ""

action = Action.create :name => "", :description => ""
Incentive.create :action_id => action.id, :name => ""

sponsor = Sponsor.create :name => "Actionarium"
action = Action.create :sponsor_id => sponsor.id, :name => "Start a company"
Incentive.create :action_id => action.id, :name => "20 minutes of designer time", :description => "These are the details of the incentive.", :sponsor_id => sponsor.id

sponsor = Sponsor.create :name => "ForProfit LLC"
action = Action.create :sponsor_id => sponsor.id, :name => "Contribute to Rails"
Incentive.create :action_id => action.id, :name => "Free food", :description => "We'll give you some food", :sponsor_id => sponsor.id

sponsor = Sponsor.create :name => "NonProfit Inc"
action = Action.create :sponsor_id => sponsor.id, :name => "Teach a cooking class"
Incentive.create :action_id => action.id, :name => "Free beer", :description => "We'll give you some beer", :sponsor_id => sponsor.id
