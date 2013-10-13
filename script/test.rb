grl = GeoRegionLimitation.first
puts "Example of Geo Region parameters: "
puts grl.build_params

puts "Example of multiple Geo Region parameters within a DeliveryLimitation object: "
dl = DeliveryLimitation.first
puts dl.build_args.inspect
