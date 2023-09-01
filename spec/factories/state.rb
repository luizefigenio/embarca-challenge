FactoryBot.define do
  factory :state do
    name { 'Example State' }
    abbreviation { 'PR' }
    population { 1_000_000 }
    governor { 'John Doe' }
  end
end
