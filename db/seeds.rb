# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

cause = Cause.create! :name => "Kids"
action = Action.create!  :name => "help with reading difficulties.",
                        :cause_id => cause.id,
                        :description => "Teachers who are experts in learning difficulties help with task and puzzle design."
Incentive.create!  :action_id => action.id,
                  :name => "give you a massage.",
                  :description => "You can come to my studio for a complimentary 30 minute massage, must be local"


cause = Cause.create! :name => "Bike Church"
action = Action.create!  :name => "used bike parts.",
                        :cause_id => cause.id,
                        :description => "Philadelphia Neighborhood Bikeworks runs the Bike 'Church' " +
                          "and needs bikes and spare parts to repair and " +
                          "provide to low income families for environmentally friendly transportation"
Incentive.create!  :action_id => action.id,
                  :name => "buy you a beer.",
                  :description => "If you're local, I'll get a beer with you.  If not, you can grab it " +
                    "when you're in town or I can call your local bar and pick up the tab!"

cause = Cause.create! :name => "Rails"
action = Action.create!  :name => "programming help",
                        :cause_id => cause.id,
                        :description => "There's a lot of bugs in the latest release candidate.  Pick one and fix it!"
Incentive.create!  :action_id => action.id,
                  :name => "donate $20 to the charity of your choice.",
                  :description => "Let us know the charity and we'll give the money in your name.  We'd also love to hear how you fixed the bug!"

cause = Cause.create! :name => "Montgomery County, PA"
action = Action.create!  :name => "help tutoring illiterate adults",
                        :cause_id => cause.id,
                        :description => "10% of adults are not fully literate, and volunteers can help them become confident and functional reading and writing!"

puts "Seeds added successfully."
#Incentive.create!  :action_id => action.id,
#                  :name => ""
#                  :description => ""

# cause = Cause.create! :name => ""
# action = Action.create!  :name => "",
#                         :cause_id => cause.id,
#                         :description => ""
# Incentive.create!  :action_id => action.id,
#                   :name => ""
#                   :description => ""


