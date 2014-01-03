#coding: utf-8
Cuando(/^lleno el formulario con los datos de una nueva noticia$/) do
  fill_in "Titulo", :with => "Chili dog el perro callejero más caro del mundo"
  fill_in "Contenido", :with => 'Todos los días deambulaba por las calles de Valparaíso, Chile, buscando comida y cariño de los marineros o visitantes del famoso puerto. Se ganaba la vida moviendo la cola. Hasta que un día tuvo un golpe de suerte. En un mirador y sacándose una foto con la bahía de fondo estaba Kaylan OConnor. No lo pensó dos veces. Se acercó y se sentó a los pies de la turista estadounidense, quien se enamoró perdidamente de él. Pasaron juntos ocho horas que ella y su familia estuvieron en el puerto, como parada final de su viaje en crucero.
"Saltó a nuestros brazos como diciendo "hola". Era tan dulce y nos siguió todo el resto del viaje jugando con nosotros. Sabíamos que necesitaba un hogar y nos encantan los perros", dijo OConnor.
Ocho horas fueron suficientes para que Chili Dog se quedara estampado en la mente de los OConnor. Tanto así que ya de regreso, a fines de febrero, buscaron en internet asociaciones de defensa de los animales en Chile para ver si era posible gestionar que Chili Dog se convirtiera en su mascota en Seattle.
Así comenzó la historia de amor de Kaylan y Chili Dog, el perro callejero color chocolate y en el cual se gastó casi US$2.000 para poder darle un hogar en otro lado del continente. "Dinero bien gastado", según la propia Kaylan le cuenta a BBC Mundo.
Un perro en un pajar "Me llegó un mail en inglés de una estadounidense que decía que se había enamorado de un perro de la calle y que quería que se lo mandara a Seattle. Lo leí con escepticismo, me pareció extraño y no le preste atención)", le relata a BBC Mundo Alexis Castillo, director de la Red de Defensores y Rescatistas de Animales (EDRA), con sede en Santiago, Chile.
Todavía escéptico, Alexis decidió poner a prueba a su interlocutora. "Le dije que necesitaba US$100 para ir a buscarlo y que si me lo enviaba ese mismo día antes de la medianoche yo podía ir al día siguiente. La verdad es que no tenía fe, pero en 20 minutos me había mandado US$200 por Western Unión. Parece que era verdad", relata Castillo.
Le pidió a dos amigos que lo acompañaran y pasaron todo ese domingo, pero no lo encontraron. Volvieron a ir, esta vez con dos voluntarios expertos en animales. Recorrieron el puerto en bicicleta hasta la 01:30 am, pero nada. Siguió la búsqueda, siempre financiada por Kaylan desde Seattle. Imprimieron 400 folletos que repartieron por el puerto y se contactaron con las instituciones de rescate animal locales, pero si no fuera por la foto de Chili Dog a los pies de la estadounidense, parecía que el perro no existía.
Un mes después de iniciada la búsqueda y cuando las esperanzas parecían perdidas, Alexis recibió un mail de una voluntaria que ayuda y esteriliza animales en Valparaíso. "Estimados Señores, leí un artículo sobre un perrito que buscan desde EEUU, lo encontré". Al comparar las fotos no había duda, el perro era idéntico a Chili Dog.
Una vez encontrado Chili Dog, comenzó el proceso para convertir al vagabundo de la calle en un lord digno de tomar un avión y cruzar el continente. Tuvieron que ponerle la vacuna antirrábica, esterilizarlo, desparasitarlo y convencer a una aerolínea de transportarlo.
La semana pasada Chili Dog finalmente llegó a Seattle donde hoy vive cómodo y feliz. Calcularon que el perro tenía unos 2 años, es decir, joven y lleno de energía. También concluyeron que no había nacido en la calle, sino que había sido abandonado.
Tras un proceso de dos meses, Chili Dog logró subirse a un avión rumbo a Seattle. Luego de un viaje de casi 20 horas, el martes 28 de mayo Chili Dog arribó sano y salvo a Seattle.
Dejó las calles y hoy vive cómodo y feliz junto con la familia OConnor y sus nuevos amigos canes Auto y Klaus, las dos previas mascotas de la casa. "Normalmente a mis perros no le gustan los otros perros, pero apenas llegó Chili Dog le permitieron estar en la casa y compartieron sus platos de comida y agua. Creo que ellos sabían que Chili necesitaba un hogar", le dice Kaylan OConnor a BBC Mundo desde Seattle.
Hoy el perro mendigo se convirtió en príncipe y vive como rey. Come varias veces al día, sale al parque y hasta le hicieron una acuarela en su honor. Chili Dog es un perro que cumplió su propio sueño americano. 
  '
  attach_file("Foto", File.expand_path("features/support/chilidog.jpg"))
  fill_in "Video", :with => "http://vimeo.com/82299487"
  fill_in "Tags", :with => "chili,dog"
end

Cuando(/^lleno "(.*?)" con "(.*?)"$/) do |campo, valor|
  fill_in(campo, :with => valor)
end

Dado(/^que existe una noticia$/) do
  Noticia.create(:titulo => "Chili dog el perro callejero",
                 :contenido => "Todos los días deambulaba por las calles de Valparaíso, Chile, buscando comida y cariño de los marineros",
                 :foto => File.new("features/support/chilidog.jpg"),
                 :video => "http://vimeo.com/82299487",
                 :tag_list => "chili,dog").save!
end
