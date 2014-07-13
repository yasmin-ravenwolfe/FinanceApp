# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

    users = User.create([{name: 'Yasmin', email: 'yfazelinia@gmail.com', password: 'password'}, {name: 'Frank', email: 'frankvaiello@gmail.com', password: 'password'}])
    yasmin = User.find(1)
    frank = User.find(2)

    groups = Group.create([{name: 'Group One'}, {name: 'Group Two'}])

    group_one = Group.find(1)
    group_one.memberships.create(user_id: 1)
    group_one.memberships.create(user_id: 2)

    purchases = Purchase.create([{description: 'apple', price: 10.00}, {description: 'banana', price: 100.00}])

    p = Purchase.find(1)
    p.receipts.create(user_id: 1, percentage: 0.4)
    p.receipts.create(user_id: 2, percentage: 0.6)