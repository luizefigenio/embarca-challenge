City.delete_all
State.delete_all

states_data = [
  { name: 'Parana', abbreviation: 'PR', population: 11_516_840, governor: 'Carlos Massa Ratinho Junior' },
  { name: 'Santa Catarina', abbreviation: 'SC', population: 7_252_502, governor: 'Carlos Moises da Silva' },
  { name: 'Rio Grande do Sul', abbreviation: 'RS', population: 11_422_973, governor: 'Eduardo Leite' }
]

states = State.create!(states_data)

cities_data = {
  'Parana' => [
    { name: 'Curitiba', population: 1_968_795 },
    { name: 'Londrina', population: 575_377 },
    { name: 'Maringa', population: 430_571 }
  ],
  'Santa Catarina' => [
    { name: 'Florianopolis', population: 508_826 },
    { name: 'Joinville', population: 590_466 },
    { name: 'Blumenau', population: 357_199 }
  ],
  'Rio Grande do Sul' => [
    { name: 'Porto Alegre', population: 1_484_941 },
    { name: 'Caxias do Sul', population: 517_451 },
    { name: 'Pelotas', population: 342_405 }
  ]
}

states.each do |state|
  cities_data[state.name].each do |city_data|
    state.cities.create(city_data)
  end
end
