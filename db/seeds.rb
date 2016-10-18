# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categoria= Category.create([{name:'Odontologia'},{name:'Medicina'}])
marca= Marca.create([{name:'3M'},{name:'Dentaurum'}])

categoria= Type.create(
	[{name:'Cirugia',category_id:'1'},
		{name:'Desechables',category_id:'1'},
		{name:'Esterilizacion',category_id:'1'},
		{name:'Periodoncia',category_id:'1'},
		{name:'Radiologia',category_id:'1'},
		{name:'Ortodoncia',category_id:'1'},
		{name:'Desechables',category_id:'2'},
		{name:'Radiologia',category_id:'1'},
		])