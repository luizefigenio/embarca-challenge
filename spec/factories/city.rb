FactoryBot.define do
  factory :city do
    name { 'Exemple City' }
    population { 100_000 }
    state_id { create(:state).id }
  end
end
