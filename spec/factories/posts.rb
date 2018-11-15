# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { 'Some Rationale' }
    user
  end

  # This will use the User class (Admin would have been guessed)
  factory :second_post, class: 'Post' do
    date { Date.today }
    rationale { 'Some more Content' }
    user
  end
end
