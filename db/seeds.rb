# State.destroy_all
# City.destroy_all

State.create(name: 'Parana', abbreviation: 'PR', population: 11_516_840, governor: 'Carlos Massa Ratinho Junior')
State.create(name: 'Santa Catarina', abbreviation: 'SC', population: 7_252_502, governor: 'Carlos Moises da Silva')
State.create(name: 'Rio Grande do Sul', abbreviation: 'RS', population: 11_422_973, governor: 'Eduardo Leite')

cities_data = {
  'Paraná' => [
    { name: 'Curitiba', population: 1_948_626 },
    { name: 'Londrina', population: 575_377 },
    { name: 'Maringá', population: 421_547 }
  ],
  'Santa Catarina' => [
    { name: 'Florianópolis', population: 500_973 },
    { name: 'Joinville', population: 590_466 },
    { name: 'Blumenau', population: 361_855 }
  ],
  'Rio Grande do Sul' => [
    { name: 'Porto Alegre', population: 1_484_941 },
    { name: 'Caxias do Sul', population: 518_012 },
    { name: 'Pelotas', population: 343_199 }
  ]
}

cities_data.each do |state_name, cities|
  state = State.find_by(name: state_name)
  cities.each do |city_data|
    state.cities.create(city_data)
  end
end
