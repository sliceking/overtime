# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { 'Some Rationale' }
  end

  # This will use the User class (Admin would have been guessed)
  factory :second_post, class: 'Post' do
    date { Date.today }
    rationale { 'Some Rationale' }
  end
end
