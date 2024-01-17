# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#################Ciudad##########################################3
sjp = City.find_by(name_city: 'San Juan del Paraná')
unless sjp
  sjp =City.new(name_city: 'San Juan del Paraná')
  sjp.save
end

en = City.find_by(name_city: 'Encarnación')
unless en
  en =City.new(name_city: 'Encarnación')
  en.save
end

as = City.find_by(name_city: 'Asunción')
unless as
  as =City.new(name_city: 'Asunción')
  as.save
end

################Funciòn#####################
asistente = Function.find_by(name_function: 'Asistente' )
unless asistente
  asistente =Function.new(name_function: 'Asistente')
  asistente.save
end

ge = Function.find_by(name_function: 'Gerente' )
unless ge
  ge =Function.new(name_function: 'Gerente')
  ge.save
end

au = Function.find_by(name_function: 'Auxiliar')
unless au
  au =Function.new(name_function: 'Auxiliar')
  au.save
end

apre = Function.find_by(name_function: 'Aprendiz')
unless apre
  apre =Function.new(name_function: 'Aprendiz')
  apre.save
end


################3############Estados######################################3


permanente = State.find_by(name_state: 'Permanente')
unless permanente
  permanente =State.new(name_state: 'Permanente')
  permanente.save
end

con = State.find_by(name_state: 'Contratado')
unless con
  con =State.new(name_state: 'Contratado')
  con.save
end
con = State.find_by(name_state: 'Suspendido')
unless con
  con =State.new(name_state: 'Suspendido')
  con.save
end