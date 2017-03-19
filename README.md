# Boris Bike Challenge

Makers Academy Week 1

## Main Objectives
- Are you having fun?
- Are you a better developer than you were yesterday?
- Can you use a test-driven approach to write object-oriented code?

## Method

We were given the week to work through 22 challenges that build on each other in rotating pairs. The over-arching instructions were to fulfil this spec:

>Let's go back several years, to the days when there were no Boris Bikes. Imagine that you're a junior developer (that was easy). Transport for London, the body responsible for delivery of a new bike system, come to you with a plan: a network of docking stations and bikes that anyone can use. They want you to build a program that will emulate all the docking stations, bikes, and infrastructure (repair staff, and so on) required to make their dream a reality.

## Technologies

* Ruby
* RSpec

## Running the application

* Clone the repo `$ git clone https://github.com/tamarlehmann/Boris-Bike.git`
* Open `irb`
* Run the following commands to interact with the application:

```
2.3.3 :001 > require './lib/bike.rb'
 => true
2.3.3 :002 > require './lib/docking_station.rb'
 => true
2.3.3 :003 > bike = Bike.new
 => #<Bike:0x007fdf73155ec8>
2.3.3 :004 > station = DockingStation.new
 => #<DockingStation:0x007fdf7314e060 @bikes=[], @capacity=20>
2.3.3 :005 > station.dock_bike(bike)
 => [#<Bike:0x007fdf73155ec8>]
2.3.3 :006 > station.release_bike
 => #<Bike:0x007fdf73155ec8> 
```

## Running the tests

* In the root directory run `$ rspec`. The test suite will run in the command line.
