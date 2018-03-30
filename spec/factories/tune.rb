# frozen_string_literal: true

FactoryBot.define do
  factory :tune do
    name { Faker::Lorem.words(rand(1..5)).map(&:titleize).join(' ') }
  end
end
