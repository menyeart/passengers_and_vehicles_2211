require './lib/passenger.rb'
require './lib/vehicle.rb'

describe Vehicle do
  
it "exists" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle).to be_an_instance_of(Vehicle)
end

it "has a year" do    
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle.year).to eq("2001")
end

it "has a make" do    
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle.make).to eq("Honda")
end

it "has a model" do    
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle.model).to eq("Civic")
end

it "does not speed by default" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle.speeding?).to eq(false)
end

it "it can speed" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  vehicle.speed
  expect(vehicle.speeding?).to eq(true)
end

it "it does not contain passengers by default" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  expect(vehicle.passengers).to eq([])
end

it "can add passengers" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
  jude = Passenger.new({"name" => "Jude", "age" => 20}) 
  taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  vehicle.add_passenger(charlie)  
  vehicle.add_passenger(jude) 
  vehicle.add_passenger(taylor) 
  expect(vehicle.passengers).to eq([charlie, jude, taylor])
end

it "can determine how many passengers are adults" do
  vehicle = Vehicle.new("2001", "Honda", "Civic")
  charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
  jude = Passenger.new({"name" => "Jude", "age" => 20}) 
  taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  vehicle.add_passenger(charlie)  
  vehicle.add_passenger(jude) 
  vehicle.add_passenger(taylor) 
  expect(vehicle.num_adults).to eq(2)
end












end