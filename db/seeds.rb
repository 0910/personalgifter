# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Occasion.find_or_create_by(:name => 'cumpleaños')
Occasion.find_or_create_by(:name => 'boda')
Occasion.find_or_create_by(:name => 'aniversario')
Occasion.find_or_create_by(:name => 'dia de')
Occasion.find_or_create_by(:name => 'bautismo')
Occasion.find_or_create_by(:name => 'babyshower')
Occasion.find_or_create_by(:name => 'se muda')
Occasion.find_or_create_by(:name => 'se van a vivir juntos')
Occasion.find_or_create_by(:name => 'inauguran casa o reforma')
Occasion.find_or_create_by(:name => 'inauguran emprendimiento')
Occasion.find_or_create_by(:name => 'por darle un gusto')
Occasion.find_or_create_by(:name => 'para darle una sorpresa, sin motivo concreto')
Occasion.find_or_create_by(:name => 'para reconciliarse')
Occasion.find_or_create_by(:name => 'porque yo lo valgo!')
Occasion.find_or_create_by(:name => 'navidad')
Occasion.find_or_create_by(:name => 'reyes')
Occasion.find_or_create_by(:name => 'recibimiento')
Occasion.find_or_create_by(:name => 'empresarial')
Occasion.find_or_create_by(:name => 'otro evento familiar')
Occasion.find_or_create_by(:name => 'amigo invisible')
Occasion.find_or_create_by(:name => 'festividad religiosa')
Interest.find_or_create_by(:name => 'CREATIVO, CHISPEANTE, DIVERTIDO, ORIGINAL')
Interest.find_or_create_by(:name => 'ATLÉTICO, DEPORTISTA, CUIDADOSA DEL FÍSICO, DE VIDA SALUDABLE, GUSTA DE LAS CAMINATAS, ANDAR EN BICI, VIDA AL AIRE LIBRE')
Interest.find_or_create_by(:name => 'REBELDE, DESCONTRACTURADO, JUVENIL, INFORMAL')
Interest.find_or_create_by(:name => 'ACOGEDOR, FAMILIERO, CALIDO, PADRE O MADRE DE FAMILIA, CARIÑOSO, ROMÁNTICO, BUEN COCINERO')
Interest.find_or_create_by(:name => 'INNOVADOR, ATENTO A LAS TENDENCIAS, TECHIE, EMPRENDEDOR, VANGUARDISTA, ATENTO AL DISEÑO, INDEPENDIENTE')
Interest.find_or_create_by(:name => 'REFINADO, ELEGANTE, SIEMPRE IMPECABLE, FORMAL, CUIDADOSO DE SU APARIENCIA, NO OSTENTOSO')
Interest.find_or_create_by(:name => 'EXTROVERTIDO, SALIDOR, DE ASISTIR A MUCHAS REUNIONES SOCIALES, CON MUCHOS GRUPOS DE AMIGOS')
Interest.find_or_create_by(:name => 'ESPIRITUAL, MÍSTICO, RELIGIOSO, SENSIBLE')
Interest.find_or_create_by(:name => 'CON ESTILO, PREOCUPADO POR LA MODA Y APARIENCIA')
Interest.find_or_create_by(:name => 'EXPLORADOR, VIAJERO, AVENTURERO')
Interest.find_or_create_by(:name => 'NATURALISTA, DEFENSOR DE CAUSAS, LUCHADOR SOCIAL')
Interest.find_or_create_by(:name => 'INTELECTUAL, PROFESIONAL, ESTUDIOSO, LECTOR, INTROVERTIDO')
Interest.find_or_create_by(:name => 'INTERESADA POR LOS PRODUCTOS ARTESANALES, HECHOS A MANO, ÚNICOS')
Interest.find_or_create_by(:name => 'INTERESADA POR LOS PRODUCTOS INDUSTRIALES DE BUEN DISEÑO')
Interest.find_or_create_by(:name => 'APRECIA LOS PRODUCTOS PARA EL HOGAR')
Interest.find_or_create_by(:name => 'PREFIERE EXPERIENCIAS, MOMENTOS O PRODUCTOS PARA COMPARTIR')
Interest.find_or_create_by(:name => 'ADORA LA ROPA Y LOS ACCESORIOS DE VESTIR')
Relationship.find_or_create_by(:name => 'PAREJA')
Relationship.find_or_create_by(:name => 'HIJO/A')
Relationship.find_or_create_by(:name => 'MADRE/PADRE')
Relationship.find_or_create_by(:name => 'ABUELO/A')
Relationship.find_or_create_by(:name => 'SOBRINO')
Relationship.find_or_create_by(:name => 'SUEGROS')
Relationship.find_or_create_by(:name => 'FAMILIA DIRECTA')
Relationship.find_or_create_by(:name => 'FAMILIA LEJANA')
Relationship.find_or_create_by(:name => 'AMIGO')
Relationship.find_or_create_by(:name => 'MEJOR AMIGO')
Relationship.find_or_create_by(:name => 'CONOCIDO')
Relationship.find_or_create_by(:name => 'HIJO DE AMIGO')
Relationship.find_or_create_by(:name => 'HIJO DE MEJOR AMIGO')
Relationship.find_or_create_by(:name => 'COMPAÑERO DE TRABAJO')
Relationship.find_or_create_by(:name => 'JEFE')
Relationship.find_or_create_by(:name => 'UN COMPROMISO')
Relationship.find_or_create_by(:name => 'CLIENTES')
Relationship.find_or_create_by(:name => 'EMPLEADOS')
Target.find_or_create_by(:name => 'Niños y adolescentes')
Target.find_or_create_by(:name => 'Jóvenes')
Target.find_or_create_by(:name => 'Adultos')
Target.find_or_create_by(:name => 'Seniors')
Genre.find_or_create_by(:name => 'Mujer')
Genre.find_or_create_by(:name => 'Hombre')

Product.find_or_create_by(:name => 'PERCHERO FLIP MADERA NATURAL PERCHAS NEGRAS', :description => 'PERCHERO DE PARED CON 5 PERCHAS RETRÁCTILES', :price => '1699', :link => 'http://www.altamiraoe.uy/perchero-de-pared-flip-natural-5-perchas.html')
Product.find_or_create_by(:name => 'SET DE PING PONG PONGO', :description => 'SET DE PING PONG', :price => '2190', :link => 'http://www.altamiraoe.uy/set-de-ping-pong-portatil-pongo-surf-blue.html')
Product.find_or_create_by(:name => 'CLOTHESLINE', :description => 'PORTARRETRATO', :price => '1399', :link => 'http://www.altamiraoe.uy/portarretrato-multiple-de-pared-clothesline.html')
Product.find_or_create_by(:name => 'CONCEAL', :description => 'REPISA', :price => '599', :link => 'http://www.altamiraoe.uy/repisa-conceal-large.html')
Product.find_or_create_by(:name => 'TOLOMEO MINI NICKEL O NEGRO', :description => 'LAMPARA', :price => '2490', :link => 'http://www.altamiraoe.uy/lampara-escritorio-tolomeo-mini-silver-e14.html')
Product.find_or_create_by(:name => 'T-shirt con estampa de inspiracion mandala azul francia', :description => 'T-shirt Manga corta con escote redondo, estampa de inspiracion mandala y brillos aplicados. 100% Poliester', :price => '2490', :link => 'http://lolita.com.uy/catalogo/t-shirt-con-estampa-de-inspiracion-mandala-azul-francia_KC16.06R_5')
Product.find_or_create_by(:name => 'PORTABOTELLAS PARA BICICLETA', :description => 'PORTABOTELLAS PARA BICICLETA', :price => '19', :link => 'http://gron.bigcartel.com/product/24-bottles-porta-bottiglia')
Product.find_or_create_by(:name => 'BOTELLA PARA DEPORTES', :description => 'BOTELLA PARA DEPORTES', :price => '25', :link => 'http://gron.bigcartel.com/product/24-bottles-dispenser-bottle')
Product.find_or_create_by(:name => 'JARRO TÉRMICO', :description => 'JARRO TÉRMICO HERMÉTICO PARA FRIIO Y CALOR', :price => '1590', :link => 'http://www.altamiraoe.uy/jarro-termico-west-loop-2-latte-matte.html')
Product.find_or_create_by(:name => 'SET DE IDENTIFICADOR DE COPAS + TAPÓN', :description => 'TAPÓN, SET DE IDENTIFICADORES Y TAPÓN DE SILICONA', :price => '1590', :link => 'http://www.altamiraoe.uy/identificador-de-copas-tapon-de-botellas-glasses.html')
Product.find_or_create_by(:name => 'SET DE CHOCOLATES BELGAS', :description => 'CHOCOLATES', :price => '1590', :link => 'http://www.bigbox.com.uy/regalos/gastronomia/box-delices-uruguay/cho-chocolate-belga')
Product.find_or_create_by(:name => 'SOBRE TABLET CITY GRID', :description => 'ESTUCHE PARA TABLET', :price => '990', :link => 'http://www.builtny.com.uy/productosb/tablet-laptop/sobre-tablet-city-grid-detail')
Product.find_or_create_by(:name => 'ESTUCHE PARA CHUPETE BABY PINK STRIPE', :description => 'ESTUCHE PARA CHUPETE', :price => '279', :link => 'http://www.builtny.com.uy/productosb/baby-line/estuche-para-chupete-baby-pink-stripe-detail')
Product.find_or_create_by(:name => 'ESTUCHE PARA CHUPETE BLUE STRIPE', :description => 'ESTUCHE PARA CHUPETE', :price => '279', :link => 'http://www.builtny.com.uy/productosb/baby-line/estuche-para-chupete-blue-stripe-detail')
Product.find_or_create_by(:name => 'BOLSA DE BEBE ESENCIALES CADDY', :description => 'BOLSA ORGANIZADORA PARA IMPLEMENTOS DE BEBE', :price => '1599', :link => 'http://www.builtny.com.uy/productosb/baby-line/bolsa-de-bebe-esenciales-caddy-detail')
Product.find_or_create_by(:name => 'LUNCHERA GOURMET GETAWAY MULTICOLOR FLOWERS', :description => 'LUNCHERA', :price => '990', :link => 'http://www.builtny.com.uy/productosb/luncheras/lunchera-gourmet-getaway-multicolor-flowers-detail')
Product.find_or_create_by(:name => 'CAJA DE ALMUERZO MINIDOT', :description => 'LUNCHERA', :price => '699', :link => 'http://www.builtny.com.uy/nuevosb/caja-de-almuerzo-mini-dot-detail')
Product.find_or_create_by(:name => 'MÁSCARA PARA OJOS AFUERA LUZ', :description => 'TAPAOJOS PARA VIAJE', :price => '399', :link => 'http://www.builtny.com.uy/nuevosb/mascara-para-los-ojos-afuera-luz-detail')
Product.find_or_create_by(:name => 'CROCS', :description => 'ZAPATOS', :price => '990', :link => 'http://www.toto.com.uy/index.php/hombres/crocs')
Product.find_or_create_by(:name => 'MORRAL TRENZADO', :description => 'CARTERA', :price => '4125', :link => 'http://shop.pecari.com.uy/producto.php?id=48')
Product.find_or_create_by(:name => 'BOTÍN CAROLA', :description => 'BOTAS', :price => '4125', :link => 'http://shop.pecari.com.uy/producto.php?id=42')
Product.find_or_create_by(:name => 'CORTAPIZZA SCIZZA', :description => 'CORTADOR DE PIZZA', :price => '990', :link => 'http://www.altamiraoe.uy/scizza-corta-pizza-red.html')
Product.find_or_create_by(:name => 'PANERA TÉRMICA', :description => 'PANERA', :price => '1699', :link => 'http://www.altamiraoe.uy/panera-termica.html')
Product.find_or_create_by(:name => 'DESPOJADOR LOLO CON ESPEJO', :description => 'DESPOJADOR', :price => '3755', :link => 'http://www.mod.uy/products/despojador-lolo-con-espejo')
Product.find_or_create_by(:name => 'CHAMPAGNERA CON PIE', :description => 'CHAMPAGNERA', :price => '3200', :link => 'https://www.laiberica.com.uy/products/champagnera-con-pie-grande')
Product.find_or_create_by(:name => 'TAZA PARÍS', :description => 'TAZA DE TE', :price => '320', :link => 'https://www.laiberica.com.uy/products/jarro-porcelana-paris-con-pie-con-caja-de-regalo')
Product.find_or_create_by(:name => 'TABLA CON SANGRÍA LAPACHO', :description => 'TABLA DE CORTE', :price => '1840', :link => 'https://www.laiberica.com.uy/products/tabla-rect-c-sangria-lapacho')
Product.find_or_create_by(:name => 'CAJA DE TE CON LAMINA', :description => 'CAJA DE TE', :price => '1310', :link => 'https://www.laiberica.com.uy/products/caja-de-te-6-rep-c-lamina')
Product.find_or_create_by(:name => 'Espejo biselado plata', :description => 'ESPEJO DE PARED', :price => '2400', :link => 'https://www.laiberica.com.uy/products/espejo-marco-espejo-plata-antik')
Product.find_or_create_by(:name => 'SET DE HORNEAR JOSEPH JOSEPH', :description => 'SET PARA HORNEAR', :price => '2270', :link => 'https://www.laiberica.com.uy/products/set-4-piezas-para-hornear-joseph-joseph')
Product.find_or_create_by(:name => 'AROMATIZADOR BAMBU', :description => 'AROMATIZADOR', :price => '459', :link => 'https://espacioaroma.com/difusor-de-aromas-aromatico')
Product.find_or_create_by(:name => 'SET DE VINOS', :description => 'SET DE VINOS', :price => '1500', :link => 'http://www.iberpark.com/regalos/regalo-navide-o-numero-26.html')
Product.find_or_create_by(:name => 'SET DE JUEGOS', :description => 'SET DE JUEGOS DE MESA', :price => '0', :link => 'http://www.garnie.com/productos/tiempo-libre/multijuegos-detail.html')
Product.find_or_create_by(:name => 'AJEDREZ', :description => 'JUEGO DE AJEDREZ', :price => '0', :link => 'http://www.garnie.com/productos/tiempo-libre/ajedrez-detail.html')
Product.find_or_create_by(:name => 'SET DE MATE, TERMO Y YERBERA', :description => 'SET DE MATE, TERMO Y YERBERA', :price => '0', :link => 'http://www.garnie.com/productos/tiempo-libre/set-de-mate-termo-y-yerbera-detail.html')
Product.find_or_create_by(:name => 'NECESAIRE EN CUERO', :description => 'NECESSAIRE', :price => '0', :link => 'http://www.garnie.com/productos/uso-personal/necesseire-1-detail.html')
Product.find_or_create_by(:name => 'MORRAL EN CUERO', :description => '', :price => '6500', :link => 'http://www.garnie.com/productos/business/morral-detail.html')
Product.find_or_create_by(:name => 'BALERINA TENERIFE EN CUERO', :description => 'BALLERINA EN CUERO', :price => '2890', :link => 'http://www.pasqualini.com.uy/coleccion.php')
Product.find_or_create_by(:name => 'SANDALLIA CLERMONT', :description => 'SANDALIA EN CUERO', :price => '2290', :link => 'http://www.pasqualini.com.uy/coleccion.php')
Product.find_or_create_by(:name => 'CARTERA ORNELLA', :description => 'CARTERA EN CUERO', :price => '4890', :link => 'http://www.pasqualini.com.uy/coleccion.php?c=c')
Product.find_or_create_by(:name => 'VESTIDO LARGO', :description => 'VESTIDO', :price => '2370', :link => 'http://www.lemon.com.uy/Product/341489')
Product.find_or_create_by(:name => 'REMERA CHOCOLAT', :description => 'REMERA', :price => '470', :link => 'http://www.danielcassin.com.uy/vestimenta/remeras/remera-chocolat-261103010_?v=01')
Product.find_or_create_by(:name => 'CUBRECAMA PATCHWORK', :description => 'CUBRECAMA', :price => '2790', :link => 'http://arredo.com.uy/cama/cubrecamas/cubrecama-microfibra-patch-esmero-1.html')
Product.find_or_create_by(:name => 'CUBRECAMA REVIERSIBLE MARISPOSA', :description => '', :price => '1990', :link => 'http://arredo.com.uy/cama/cubrecamas/cubrecama-reversible-144-hilos-de-puro-algodon-estampado-mariposa-3.html')
Product.find_or_create_by(:name => 'RELOJ DE PARED LINGUA', :description => 'RELOJ DE PARED', :price => '1690', :link => 'http://www.altamiraoe.uy/reloj-de-pared-lingua-wall-clock-black.html')
Product.find_or_create_by(:name => 'FUNDA PARA IPHONE WATERPROOF', :description => 'FUNDA PARA IPHONE', :price => '16,77', :link => 'https://www.etsy.com/es/listing/235826242/2015-waterproof-case-for-iphone-5s-touch?ga_order=most_relevant&ga_search_type=all&ga_view_type=gallery&ga_search_query=&ref=sr_gallery_20')
Product.find_or_create_by(:name => 'FUNDA PARA TABLET', :description => 'FUNDA PARA TABLET', :price => '0', :link => 'https://www.etsy.com/es/listing/102568374/laptop-sleeve-new-dell-xps-12-xps-13-hp?ref=listing-shop-header-1')
Product.find_or_create_by(:name => 'LOOG GUITAR', :description => 'GUITARRA PARA NIÑOS', :price => '159', :link => 'http://loogguitars.com/collections/guitars/products/acoustic-loog')
Product.find_or_create_by(:name => 'LOOG GUITAR ELECTRIC', :description => 'GUITARRA ELÉCTRICA PARA NIÑOS', :price => '199', :link => 'http://loogguitars.com/collections/guitars/products/electric-loog-red')
Product.find_or_create_by(:name => 'BATA MICROPOLAR GRIS', :description => '', :price => '1890', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/hombre/ropa-c1089089p6434536.html')
Product.find_or_create_by(:name => 'PIJAMA ALGODÓN COLOR AZUL', :description => 'PIJAMA', :price => '1490', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/hombre/ropa-c1089089p5949323.html')
Product.find_or_create_by(:name => 'SUECO DE FIELTRO GRIS', :description => 'SUECO PARA INTERIOR', :price => '990', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/hombre/calzado-c1089090p6093022.html')
Product.find_or_create_by(:name => 'NECESSAIRE/CARTERA DE MANO MARISPOSAS', :description => 'NECESSAIRE/CARTERA DE MANO', :price => '1490', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/accesorios-c1175509p5978030.html')
Product.find_or_create_by(:name => 'BATA ALGODÓN PUNTILLA', :description => 'BATA', :price => '1890', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/mujer/ropa-c1089087p6252516.html')
Product.find_or_create_by(:name => 'BATA MICROPOLAR GRIS', :description => '', :price => '', :link => 'http://www.zarahome.com/uy/es/homewear-%26-shoes/mujer/ropa-c1089087p6434534.html')
Product.find_or_create_by(:name => 'PORTAINCIENSO CERÁMICA BLANCA', :description => 'PORTAINCIENSO', :price => '290', :link => 'http://www.zarahome.com/uy/es/decoraci%C3%B3n/portainciensos-c1179516p5948248.html')
Product.find_or_create_by(:name => 'VELA CONTENEDOR TERRACOTA BORDE PLATEADO', :description => '825', :price => '', :link => 'http://www.zarahome.com/uy/es/decoraci%C3%B3n/velas-c1089526p5947170.html')
Product.find_or_create_by(:name => 'SÁBANAS Y FUNDA REVERSIBLE SATEN', :description => 'SÁBANAS Y FUNDA', :price => '3790', :link => 'http://www.zarahome.com/uy/es/cama/s%C3%A1banas-y-fundas-c1089049p6198070.html')
Product.find_or_create_by(:name => 'AMBIENTADOR EN STICKS WHITE JASMINE', :description => 'AROMATIZADOR', :price => '1390', :link => 'http://www.zarahome.com/uy/es/fragancias/white-jasmine-c1175511p5949639.html')
Product.find_or_create_by(:name => 'SET BRIDE', :description => 'SET DE ROPA INTERIOR CON ACCESORIOS', :price => '65', :link => 'http://shop.srtapeel.com/producto/30/311/Set+5+Bride+Deseo.html')
Product.find_or_create_by(:name => 'GIFT CARD SRTA PEEL ROPA INTERIOR', :description => 'GIFT CARD', :price => '50', :link => 'http://shop.srtapeel.com/descuento/108/Tarjeta+Regalo.html')
Product.find_or_create_by(:name => 'EXPERIENCIA GOURMET', :description => 'EXPERIENCIA GASTRONÓMICA GOURMET PARA 2', :price => '3300', :link => 'http://www.bigbox.com.uy/regalos/gastronomia/box-experiencia-gourmet-uy/?digital=1')
Product.find_or_create_by(:name => 'EXPERIENCIA RELAX', :description => 'EXPERIENCIA RELAX PARA 2', :price => '2200', :link => 'http://www.bigbox.com.uy/regalos/bienestar/box-relax-uy/?digital=0')
Product.find_or_create_by(:name => 'XPERIENCIA ACCIÓN', :description => 'EXPERIENCIA AVENTURA Y ACCIÓN PARA 2', :price => '1700', :link => 'http://www.bigbox.com.uy/regalos/aventura/box-accion-uy/?digital=0')
Product.find_or_create_by(:name => 'EXPERIENCIA WEEKEND', :description => 'ESCAPADA DE FIN DE SEMANA PARA 2', :price => '8500', :link => 'http://www.bigbox.com.uy/regalos/estadias/box-weekend-uy/?digital=1')
Product.find_or_create_by(:name => 'MALBEC GIFT BOX', :description => 'SET DE VINO Y QUESO', :price => '580', :link => 'http://www.sendstar.com.uy/product_details.asp?prod_id=36378&cat_id=36')
Product.find_or_create_by(:name => 'FOREVER AND EVER', :description => 'BOMBONES Y CHAMPAGNE', :price => '1460', :link => 'http://www.sendstar.com.uy/product_details.asp?prod_id=29691')

