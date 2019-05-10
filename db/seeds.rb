Category.delete_all
Category.create(name: 'Trucks')
Category.create(name: 'Shippers')
Category.create(name: 'Truckers')
Category.create(name: 'Other')
TruckType.create([
  {name: "Rigidos"},
  {name: "Articulado"},
  {name: "Trailer"},
  {name: "Tren de carretera"}
])

TruckMerchandise.create([
  {name: "Camion de lona"},
  {name: "Plataforma abierta"},
  {name: "Frigorificos"},
  {name: "Cisterna"},
  {name: "Cerrado"},
  {name: "Portacoches"},
  {name: "Camion jaula"},
  {name: "Contenedores"},
])

TruckLoad.create([
  {name: "N1"},
  {name: "N2"},
  {name: "N3"},
])

Coverage.create([
  {name: "BOG-MED"},
  {name: "MED-BOG"},
  {name: "BOG-CAL"},
  {name: "CAL-BOG"},
  {name: "MED-CAL"},
  {name: "CAL-MED"},
  {name: "BOG-BARR"},
  {name: "BARR-BOG"},
  {name: "MED-BARR"},
  {name: "BARR-MED"},
])

City.create([
  {name: "BOG"},
  {name: "MED"},
  {name: "CAL"},
  {name: "BARR"},
])
