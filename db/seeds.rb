#Coding: utf-8
require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

30.times do
  FactoryGirl.create :cliente
end

12.times do
  FactoryGirl.create :contacto
end

6.times do
  FactoryGirl.create :imagen
end

12.times do
  FactoryGirl.create :miembro
end

12.times do
  FactoryGirl.create :postulante
end

12.times do
  FactoryGirl.create :proyecto
end

12.times do
  FactoryGirl.create :servicio
end

6.times do
  FactoryGirl.create :slide
end

6.times do
  FactoryGirl.create :video
end

6.times do
  FactoryGirl.create :asociado
end

Asociado.reset_column_information

asociados = Asociado.all

asociados.each_with_index do |b, i|
  b.position = i+1
  b.save!
end

DatosDeContacto.create(telefono: '221 2808', direccion: ' Camino Real 1121 Dpto 302 San Isidro, Lima.', trabaja_con_nosotros: ' Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas.')

Historia.create(titulo: 'MC&F', subtitulo: 'Historia', contenido: 'Mercados de Capitales, Inversiones y Finanzas Consultores S.A. (MC&F), es una empresa de consultoría peruana especializada en asuntos complejos vinculados a los sistemas financieros, al mercado de capitales y a la creación de valor en los sistemas de gestión empresarial; y desde el año 2008 brinda servicios tanto a corporaciones nacionales e internacionales de capital estatal y/o privado, empresas familiares, instituciones financieras, inversionistas institucionales e importantes entidades multilaterales.
No obstante, MC&F como concepto, nace hacia fines del año 1995 como iniciativa para promover el desarrollo de los mercados financieros y de capitales en el Perú. Su gestación se ubicó en un entorno árido en donde las primeras grandes reformas asociadas a estos mercados se habían realizado, y apenas asomaban sus primeros efectos; había aún ausencia de importantes actores o instituciones típicas de mercados financieros modernos, y en ese sentido, el conocimiento, la cultura financiera y bursátil en general era una idea que aún era extranjera a nuestra realidad. En ese contexto, y considerando además que varios de los socios fundadores de MC&F se mantenían vinculados a labores profesionales en el Gobierno del Perú, MC&F adopta la forma de una Organización Sin Fines de Lucro (ONG) –denominada Centro de Estudios de Mercados de Capitales y Financieros (MC&F)- y focaliza sus actividades en el desarrollo de seminarios, paneles y eventos de discusión sobre la temática relacionada a los mercados de su interés.
Decenas de eventos tuvieron lugar bajo el liderazgo de MC&F como ONG, temas como los siguientes fueron cubiertos: reformas del Mercado de Valores, del Sistema Privado de Pensiones, del Sistema Bancario (incluidas enmiendas de la legislación del Banco Central de Reserva); asimismo discusiones y análisis de nuevas entidades, instituciones y mecanismos en los mercados financieros del Perú que tuvieron lugar en dichos años, tales como las relacionadas a los Fondos Mutuos, los Fondos de Inversión, las Instituciones de Compensación y Liquidación de Valores, las Clasificadoras de Riesgo, las titularizaciones de activos, las Ofertas Públicas de Adquisición (OPA), implementaciones de las Reglas de Basilea, entre otros temas importantes. De esta forma MC&F, propicio el mayor conocimiento de los mercados y su funcionamiento y albergo la generación de múltiples planteamientos para mejorar el funcionamiento del sistema financiero y del mercado de capitales del Perú. Como resultado de lo anterior, MC&F publica la obra el "ABC del Mercado de Capitales" en el año 1998 como una contribución a hacer más asequible el entendimiento del mismo.
Con el incremento de la sofistificación de los mercado financieros peruanos, en el año 2001 MC&F instaura un Consejo de Buen Gobierno Corporativo conformado por respetados empresarios, importantes directores de corporaciones y representantes del mercado de valores del Perú. Asume así un liderazgo en este tema, el cual se consagra con la publicación de su versión del Código de Buen Gobierno Corporativo de ese mismo año. En la misma línea, en el año 2002, MC&F es invitado a conformar el grupo de entidades a cargo de la elaboración de los "Principios de Buen Gobierno Corporativo para las Sociedades Peruanas" que ese mismo año publicaría la CONASEV, el regulador del mercado de valores peruano –hoy, SMV-. Desde ese entonces, MC&F ha estado abocado a promover la mejora de los estándares de Buen Gobierno Corporativo en diversas corporaciones que han requerido su concurso. Confirmando su rol de liderazgo en estos aspectos, en el año 2006 MC&F elabora para el FONAFE el “Código Marco de Buen Gobierno Corporativo de las Empresas del Estado”.
A inicio del año 2008, MC&F adopta la forma legal que hoy ostenta, a efectos de brindar toda una gama de servicios de asesoría en los distintos planos que requieran las entidades participantes o interesadas en participar en los mercados financieros y de capitales. A la par de su alto estándar técnico, MC&F mantiene como su rasgo más distintivo su independencia y ausencia de conflictos de interés en la provisión de servicios.'
                  )

TextoDeServicio.create(subtitulo: 'subtítulo', contenido: 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.')

TextoDeInicio.create(contenido: 'Somos profesionales con experiencia en sistemas financieros y de gestión empresarial. Nos focalizamos en los mercados financieros. Brindamos asesoría en análisis económico, financiero y regulación.')

TextoDeNoticia.create(contenido: 'Somos profesionales con experiencia en sistemas financieros y de gestión empresarial.')



