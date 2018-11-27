# frozen_string_literal: true

@user = User.create(email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                    first_name: 'john', last_name: 'snow')

puts '1 user created'

AdminUser = AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                             first_name: 'admin', last_name: 'willard')

puts '1 admin user created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts '100 posts have been created'
