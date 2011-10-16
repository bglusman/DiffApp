# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)


cause = Cause.create! :name => "Philadelphia residents"
supporter = Actor.create! :name => "Brian G."
action = Action.create!   :name => "reliable bikes for transportation.",
                          :cause_id => cause.id,
                          :description => "Philadelphia Neighborhood Bikeworks runs the Bike 'Church' " +
                          "and needs bikes and spare parts to repair and " +
                          "provide to low income families for environmentally friendly transportation"
Incentive.create!   :action_id => action.id,
                    :supporter_id => supporter.id,
                    :name => "buy you a beer.",
                    :description => "If you're local, I'll get a beer with you.  If not, you can grab it " +
                    "when you're in town or I can call your local bar and pick up the tab!"

cause = Cause.create! :name => "Rails",
                      :description => "Ruby on Rails is an open source web framework."
supporter = Actor.create! :name => "Neomind Labs"
action = Action.create!   :name => "programming help.",
                          :cause_id => cause.id,
                          :description => "There's a lot of bugs in the latest release candidate.  Pick one and fix it!"
Incentive.create!   :action_id => action.id,
                    :supporter_id => supporter.id,
                    :name => "donate $20 to the charity of your choice.",
                    :description => "Let us know the charity and we'll give the money in your name.  We'd also love to hear how you fixed the bug!"

cause = Cause.create! :name => "Montgomery County, PA",
                      :description => "Montgomery County is a suburb to the northwest of Philadelphia, PA"

supporter = Actor.create! :name => "Janis G."
action = Action.create!   :name => "help tutoring illiterate adults.",
                          :cause_id => cause.id,
                          :description => "10% of adults are not fully literate, and volunteers can help them become confident and functional reading and writing!"

Incentive.create!   :action_id => action.id,
                    :supporter_id => supporter.id,
                    :name => "give you a copy of her world famous apple pie recipe.",
                    :description => "This recipe has been passed down through generations and has garnered praise "+
                    "from hundreds of dinner guests as the best they've ever tasted!  You won't be disappointed!"




cause = Cause.create! :name => "Startup Rookies",
                      :description => "Entrepreneurs building their first company and product"

supporter = Actor.create! :name => "LawMeets"
action = Action.create!   :name => "need startup veterans' advice.",
                          :cause_id => cause.id,
                          :description => "Actionaries need to submit online video responses to specific questions."

Incentive.create!   :action_id => action.id,
                    :supporter_id => supporter.id,
                    :name => "give four hours of legal assistance.",
                    :description => "LawMeets is a group dedicated to better enable the mentoring "+
                    "process of young lawyers.  Students from their legal clinic will provide four "+
                    "hours of legal help to an experienced entrepreneur for their help!"




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


