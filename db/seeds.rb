# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 = Country.new
c1.name = "United States"
c2 = Country.new
c2.name = "Canada"

c1.save!
c2.save!

grl = GeoRegionLimitation.new
grl.countries << c1
grl.countries << c2
grl.logical_op = "AND"
grl.comparison_op = "Is any of"

grl.save!
