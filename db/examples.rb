# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

New_items.create([
               { given_name: 'Amanda',
                 family_name: 'A',
                 nickname: 'A',
                  born_on: '2017-01-01',
                   user_id: 1},
               { given_name: 'Amanda',
                 family_name: 'B',
                nickname: 'B',
                born_on: '2017-01-02',
                 user_id: 1},
               { given_name: 'Amanda',
                 family_name: 'C',
                nickname: 'C',
                born_on: '2017-01-03',
                 user_id: 1},
               { given_name: 'Amanda',
                 family_name: 'D',
                nickname: 'D',
                born_on: '2017-01-04',
                user_id:1 },
               { given_name: 'Amanda',
                 family_name: 'E',
                nickname: 'E',
                born_on: '2017-01-05',
                 user_id: 1}
             ])
