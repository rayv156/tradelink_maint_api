# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Truck.create(
    truck_number: 1234,
    year: 2020,
    make: 'Ford',
    model: 'Test',
    vin: '12345',
    plates: [{state: "TX", number: "TST5489", expiration: "12/20"}],
    inspection: [{type: "test inspection", expiration: "12/20"}],
    insurance_exp: "12/20",
    axles: 4,
    tires: [{size: "3432DD", make_model: "Bridgestone/Trialers", wheel_type: "big wheels"}],
    ownership: "Ray Velasquez",
    status: "Active"
)