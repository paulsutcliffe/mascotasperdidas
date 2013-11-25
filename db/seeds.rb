#coding: utf-8
require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

FactoryGirl.create :usuario

12.times do
  FactoryGirl.create :anuncio
end

12.times do
  FactoryGirl.create :contacto
end

6.times do
  FactoryGirl.create :imagen
end

12.times do
  FactoryGirl.create :noticia
end

12.times do
  FactoryGirl.create :plan
end

12.times do
  FactoryGirl.create :portada
end

12.times do
  FactoryGirl.create :publicacion
end


5.times do
  FactoryGirl.create :slide
end

12.times do
  FactoryGirl.create :testimonio
end

5.times do
  FactoryGirl.create :video
end

Provincia.create(nombre: 'Lima')
Ciudad.create(nombre: 'Lima', provincia_id: 1)
Distrito.create(nombre:'Cercado de Lima', codigo_postal: 'Lima 01', ciudad_id: 1)
Distrito.create(nombre:'Ancón', codigo_postal: 'Lima 02', ciudad_id: 1)
Distrito.create(nombre:'Ate Vitarte', codigo_postal: 'Lima 03', ciudad_id: 1)
Distrito.create(nombre:'Barranco', codigo_postal: 'Lima 04', ciudad_id: 1)
Distrito.create(nombre:'Breña', codigo_postal: 'Lima 05', ciudad_id: 1)
Distrito.create(nombre:'Carabayllo', codigo_postal: 'Lima 06', ciudad_id: 1)
Distrito.create(nombre:'Chaclacayo', codigo_postal: 'Lima 08', ciudad_id: 1)
Distrito.create(nombre:'Chorrillos', codigo_postal: 'Lima 09', ciudad_id: 1)
Distrito.create(nombre:'Cieneguilla', codigo_postal: 'Lima 40', ciudad_id: 1)
Distrito.create(nombre:'Comas', codigo_postal: 'Lima 07', ciudad_id: 1)
Distrito.create(nombre:'El Agustino', codigo_postal: 'Lima 10', ciudad_id: 1)
Distrito.create(nombre:'Independencia', codigo_postal: 'Lima 28', ciudad_id: 1)
Distrito.create(nombre:'Jesús María', codigo_postal: 'Lima 11', ciudad_id: 1)
Distrito.create(nombre:'La Molina', codigo_postal: 'Lima 12', ciudad_id: 1)
Distrito.create(nombre:'La Victoria', codigo_postal: 'Lima 13', ciudad_id: 1)
Distrito.create(nombre:'Lince', codigo_postal: 'Lima 14', ciudad_id: 1)
Distrito.create(nombre:'Los Olivos', codigo_postal: 'Lima 39', ciudad_id: 1)
Distrito.create(nombre:'Lurigancho', codigo_postal: 'Lima 15', ciudad_id: 1)
Distrito.create(nombre:'Lurín', codigo_postal: 'Lima 16', ciudad_id: 1)
Distrito.create(nombre:'Magadalena del Mar', codigo_postal: 'Lima 17', ciudad_id: 1)
Distrito.create(nombre:'Miraflores', codigo_postal: 'Lima 18', ciudad_id: 1)
Distrito.create(nombre:'Pachacámac', codigo_postal: 'Lima 19', ciudad_id: 1)
Distrito.create(nombre:'Pucusana', codigo_postal: 'Lima 20', ciudad_id: 1)
Distrito.create(nombre:'Pueblo Libre', codigo_postal: 'Lima 21', ciudad_id: 1)
Distrito.create(nombre:'Puente Piedra', codigo_postal: 'Lima 22', ciudad_id: 1)
Distrito.create(nombre:'Punta Negra', codigo_postal: 'Lima 23', ciudad_id: 1)
Distrito.create(nombre:'Punta Hermosa', codigo_postal: 'Lima 24', ciudad_id: 1)
Distrito.create(nombre:'Ricardo Palma', codigo_postal: 'Lima 91', ciudad_id: 1)
Distrito.create(nombre:'Rímac', codigo_postal: 'Lima 25', ciudad_id: 1)
Distrito.create(nombre:'San Bartolo', codigo_postal: 'Lima 26', ciudad_id: 1)
Distrito.create(nombre:'San Borja', codigo_postal: 'Lima 41', ciudad_id: 1)
Distrito.create(nombre:'San Isidro', codigo_postal: 'Lima 27', ciudad_id: 1)
Distrito.create(nombre:'San Juan de Lurigancho', codigo_postal: 'Lima 36', ciudad_id: 1)
Distrito.create(nombre:'San Juan de Miraflores', codigo_postal: 'Lima 29', ciudad_id: 1)
Distrito.create(nombre:'San Luis', codigo_postal: 'Lima 30', ciudad_id: 1)
Distrito.create(nombre:'San Martín de Porres', codigo_postal: 'Lima 31', ciudad_id: 1)
Distrito.create(nombre:'San Miguel', codigo_postal: 'Lima 32', ciudad_id: 1)
Distrito.create(nombre:'Santa Anita', codigo_postal: 'Lima 43', ciudad_id: 1)
Distrito.create(nombre:'Santa Eulalia', codigo_postal: 'Lima 92', ciudad_id: 1)
Distrito.create(nombre:'Santa María del Mar', codigo_postal: 'Lima 37', ciudad_id: 1)
Distrito.create(nombre:'Santa Rosa', codigo_postal: 'Lima 38', ciudad_id: 1)
Distrito.create(nombre:'Santiago de Surco', codigo_postal: 'Lima 33', ciudad_id: 1)
Distrito.create(nombre:'Surquillo', codigo_postal: 'Lima 34', ciudad_id: 1)
Distrito.create(nombre:'Villa El Salvador', codigo_postal: 'Lima 42', ciudad_id: 1)
Distrito.create(nombre:'Villa María del Triunfo', codigo_postal: 'Lima 35 ', ciudad_id: 1)

Animal.create(nombre: 'Perro')
Animal.create(nombre: 'Gato')

Raza.create(nombre: 'Akita Inu', animal_id: 1)
Raza.create(nombre: 'Alaskan Malamute', animal_id: 1)
Raza.create(nombre: 'Barzoi', animal_id: 1)
Raza.create(nombre: 'Basset Azul de Gascuña', animal_id: 1)
Raza.create(nombre: 'Basset Hound', animal_id: 1)
Raza.create(nombre: 'Beagle', animal_id: 1)
Raza.create(nombre: 'Beagle Harrier', animal_id: 1)
Raza.create(nombre: 'Beauceron', animal_id: 1)
Raza.create(nombre: 'Bichón Maltés', animal_id: 1)
Raza.create(nombre: 'Bobtail', animal_id: 1)
Raza.create(nombre: 'Border Collie', animal_id: 1)
Raza.create(nombre: 'Boxer', animal_id: 1)
Raza.create(nombre: 'Boyero de Berna', animal_id: 1)
Raza.create(nombre: 'Braco Alemán', animal_id: 1)
Raza.create(nombre: 'Braco Francés', animal_id: 1)
Raza.create(nombre: 'Briard', animal_id: 1)
Raza.create(nombre: 'Bull Terrier Inglés', animal_id: 1)
Raza.create(nombre: 'Bulldog Francés', animal_id: 1)
Raza.create(nombre: 'Bulldog Inglés', animal_id: 1)
Raza.create(nombre: 'Bullmastiff', animal_id: 1)
Raza.create(nombre: 'Cairn Terrier', animal_id: 1)
Raza.create(nombre: 'Cane Corso', animal_id: 1)
Raza.create(nombre: 'Caniche', animal_id: 1)
Raza.create(nombre: 'Cavalier King Charles', animal_id: 1)
Raza.create(nombre: 'Chihuahua', animal_id: 1)
Raza.create(nombre: 'Chow Chow', animal_id: 1)
Raza.create(nombre: 'Cocker Spaniel Americano', animal_id: 1)
Raza.create(nombre: 'Cocker Spaniel Inglés', animal_id: 1)
Raza.create(nombre: 'Collie Rough', animal_id: 1)
Raza.create(nombre: 'Collie Smooth', animal_id: 1)
Raza.create(nombre: 'Dálmata', animal_id: 1)
Raza.create(nombre: 'Doberman', animal_id: 1)
Raza.create(nombre: 'Dogo Argentino', animal_id: 1)
Raza.create(nombre: 'Dogo de Burdeos', animal_id: 1)
Raza.create(nombre: 'Epagneul Bretón', animal_id: 1)
Raza.create(nombre: 'Epagneul Francés', animal_id: 1)
Raza.create(nombre: 'Epagneul Japonés', animal_id: 1)
Raza.create(nombre: 'Fox Terrier', animal_id: 1)
Raza.create(nombre: 'Galgo Español', animal_id: 1)
Raza.create(nombre: 'Galgo Irlandés', animal_id: 1)
Raza.create(nombre: 'Golden Retriever', animal_id: 1)
Raza.create(nombre: 'Gordon Setter', animal_id: 1)
Raza.create(nombre: 'Gos dAtura', animal_id: 1)
Raza.create(nombre: 'Gran Danés', animal_id: 1)
Raza.create(nombre: 'Husky Siberiano', animal_id: 1)
Raza.create(nombre: 'Komondor', animal_id: 1)
Raza.create(nombre: 'Labrador Retriever', animal_id: 1)
Raza.create(nombre: 'Lebrel Afgano', animal_id: 1)
Raza.create(nombre: 'Lebrel Polaco', animal_id: 1)
Raza.create(nombre: 'Mastiff', animal_id: 1)
Raza.create(nombre: 'Mastín de los Pirineos', animal_id: 1)
Raza.create(nombre: 'Mastín Español', animal_id: 1)
Raza.create(nombre: 'Mastín Napolitano', animal_id: 1)
Raza.create(nombre: 'Montaña de los Pirineos', animal_id: 1)
Raza.create(nombre: 'Norfolk Terrier', animal_id: 1)
Raza.create(nombre: 'Norwich Terrier', animal_id: 1)
Raza.create(nombre: 'Papillon', animal_id: 1)
Raza.create(nombre: 'Pastor Alemán', animal_id: 1)
Raza.create(nombre: 'Pastor Australiano', animal_id: 1)
Raza.create(nombre: 'Pastor Belga', animal_id: 1)
Raza.create(nombre: 'Pastor Blanco Suizo', animal_id: 1)
Raza.create(nombre: 'Pastor de los Pirineos', animal_id: 1)
Raza.create(nombre: 'Pekinés', animal_id: 1)
Raza.create(nombre: 'Pequeño Azul de Gascuña', animal_id: 1)
Raza.create(nombre: 'Pequeño Basset Griffon', animal_id: 1)
Raza.create(nombre: 'Pequeño Brabantino', animal_id: 1)
Raza.create(nombre: 'Pequeño Perro León', animal_id: 1)
Raza.create(nombre: 'Pequeño Perro Ruso', animal_id: 1)
Raza.create(nombre: 'Pequeño Sabueso Suizo', animal_id: 1)
Raza.create(nombre: 'Perdiguero de Burgos', animal_id: 1)
Raza.create(nombre: 'Perdiguero Portugués', animal_id: 1)
Raza.create(nombre: 'Perro de Agua Español', animal_id: 1)
Raza.create(nombre: 'Perro Lobo de Checoslovaquia', animal_id: 1)
Raza.create(nombre: 'Pinscher miniatura', animal_id: 1)
Raza.create(nombre: 'Pit Bull', animal_id: 1)
Raza.create(nombre: 'Podenco Canario', animal_id: 1)
Raza.create(nombre: 'Podenco Ibicenco', animal_id: 1)
Raza.create(nombre: 'Pointer Inglés', animal_id: 1)
Raza.create(nombre: 'Presa Canario', animal_id: 1)
Raza.create(nombre: 'Pug', animal_id: 1)
Raza.create(nombre: 'Rafeiro do Alentejo', animal_id: 1)
Raza.create(nombre: 'Rottweiler', animal_id: 1)
Raza.create(nombre: 'Samoyedo', animal_id: 1)
Raza.create(nombre: 'San Bernardo', animal_id: 1)
Raza.create(nombre: 'Schnauzer gigante', animal_id: 1)
Raza.create(nombre: 'Schnauzer mediano', animal_id: 1)
Raza.create(nombre: 'Schnauzer miniatura', animal_id: 1)
Raza.create(nombre: 'Scottish Terrier', animal_id: 1)
Raza.create(nombre: 'Setter Inglés', animal_id: 1)
Raza.create(nombre: 'Setter Irlandés', animal_id: 1)
Raza.create(nombre: 'Shar Pei', animal_id: 1)
Raza.create(nombre: 'Shih Tzu', animal_id: 1)
Raza.create(nombre: 'Spitz', animal_id: 1)
Raza.create(nombre: 'Springer Spaniel Galés', animal_id: 1)
Raza.create(nombre: 'Springer Spaniel Inglés', animal_id: 1)
Raza.create(nombre: 'Teckel', animal_id: 1)
Raza.create(nombre: 'Terranova', animal_id: 1)
Raza.create(nombre: 'Weimaraner', animal_id: 1)
Raza.create(nombre: 'Westies', animal_id: 1)
Raza.create(nombre: 'Whippet', animal_id: 1)
Raza.create(nombre: 'Yorkshire Terrier', animal_id: 1)

Raza.create(nombre: 'Azul ruso', animal_id: 2)
Raza.create(nombre: 'American shorthair', animal_id: 2)
Raza.create(nombre: 'American wirehair', animal_id: 2)
Raza.create(nombre: 'Angora turco', animal_id: 2)
Raza.create(nombre: 'Africano doméstico', animal_id: 2)
Raza.create(nombre: 'Bengala', animal_id: 2)
Raza.create(nombre: 'Bobtail japonés', animal_id: 2)
Raza.create(nombre: 'Bombay', animal_id: 2)
Raza.create(nombre: 'Bosque de Noruega', animal_id: 2)
Raza.create(nombre: 'British Shorthair', animal_id: 2)
Raza.create(nombre: 'Burmés', animal_id: 2)
Raza.create(nombre: 'Cornish rex', animal_id: 2)
Raza.create(nombre: 'California Spangled', animal_id: 2)
Raza.create(nombre: 'Devon rex', animal_id: 2)
Raza.create(nombre: 'Dorado africano', animal_id: 2)
Raza.create(nombre: 'Europeo común', animal_id: 2)
Raza.create(nombre: 'German Rex', animal_id: 2)
Raza.create(nombre: 'Gato', animal_id: 2)
Raza.create(nombre: 'Gato exótico', animal_id: 2)
Raza.create(nombre: 'Habana brown', animal_id: 2)
Raza.create(nombre: 'Himalayo', animal_id: 2)
Raza.create(nombre: 'Korat', animal_id: 2)
Raza.create(nombre: 'Khao Manee', animal_id: 2)
Raza.create(nombre: 'Maine Coon', animal_id: 2)
Raza.create(nombre: 'Manx', animal_id: 2)
Raza.create(nombre: 'Mau egipcio', animal_id: 2)
Raza.create(nombre: 'Munchkin', animal_id: 2)
Raza.create(nombre: 'Ocicat', animal_id: 2)
Raza.create(nombre: 'Oriental', animal_id: 2)
Raza.create(nombre: 'Oriental de pelo largo', animal_id: 2)
Raza.create(nombre: 'Persa', animal_id: 2)
Raza.create(nombre: 'Peterbald', animal_id: 2)
Raza.create(nombre: 'Pixi bob', animal_id: 2)
Raza.create(nombre: 'Ragdoll', animal_id: 2)
Raza.create(nombre: 'Sagrado de Birmania', animal_id: 2)
Raza.create(nombre: 'Scottish Fold', animal_id: 2)
Raza.create(nombre: 'Selkirk rex', animal_id: 2)
Raza.create(nombre: 'Serengeti', animal_id: 2)
Raza.create(nombre: 'Seychellois', animal_id: 2)
Raza.create(nombre: 'Siamés', animal_id: 2)
Raza.create(nombre: 'Siamés Moderno', animal_id: 2)
Raza.create(nombre: 'Siamés Tradicional', animal_id: 2)
Raza.create(nombre: 'Siberiano', animal_id: 2)
Raza.create(nombre: 'Snowshoe', animal_id: 2)
Raza.create(nombre: 'Sphynx', animal_id: 2)
Raza.create(nombre: 'Tonkinés', animal_id: 2)
Raza.create(nombre: 'Van Turco', animal_id: 2)
