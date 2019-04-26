-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: wikimusic
-- ------------------------------------------------------
-- Server version	5.5.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_album`
--

DROP TABLE IF EXISTS `tb_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_album` (
  `id_album` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(50) DEFAULT '',
  `dt_lancamento` date DEFAULT NULL,
  `ds_imagem` varchar(100) DEFAULT '',
  `id_artista` int(10) DEFAULT NULL,
  `id_estilo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_album`
--

LOCK TABLES `tb_album` WRITE;
/*!40000 ALTER TABLE `tb_album` DISABLE KEYS */;
INSERT INTO `tb_album` VALUES (20,'Title One','2010-08-03','titleone.jpg',20,38),(21,'Title Two','2011-08-03','titletwo.jpg',22,21),(22,'Title Three','2012-08-03','titlethree.jpg',23,21),(23,'Title Four','2016-08-03','titlefour.jpg',25,21),(24,'Title One','2010-08-03','titleone.jpg',22,56),(26,'Album Five','2010-08-03','titleone.jpg',20,20),(27,'Title Six','2010-09-16','titleone.jpg',22,56),(28,'Title Seven','2010-08-03','titleseven.jpg',23,38);
/*!40000 ALTER TABLE `tb_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_artista`
--

DROP TABLE IF EXISTS `tb_artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_artista` (
  `id_artista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_nome` varchar(50) NOT NULL DEFAULT '',
  `ds_nacionalidade` varchar(50) NOT NULL DEFAULT '',
  `ds_imagem` varchar(100) NOT NULL DEFAULT '',
  `ds_biografia` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_artista`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_artista`
--

LOCK TABLES `tb_artista` WRITE;
/*!40000 ALTER TABLE `tb_artista` DISABLE KEYS */;
INSERT INTO `tb_artista` VALUES (20,'Aretha Franklin','americana','arethafranklin.jpg','Aretha Louise Franklin nasceu em Memphis, em 25 de março de 1942. É uma cantora norte-americana de gospel, R&B e soul que virou ícone da música negra. Foi considerada a maior cantora de todos os tempos pela revista Rolling Stone e, pela mesma revista, a nona maior artista da música de todos os tempos.'),(21,'Esther Phillips','americana','estherphillips.jpg',''),(22,'James Brown','americana','jamesbrown.jpg',''),(23,'Tina Turner','americana','tinaturner.jpg',''),(24,'Janet Jackson','americana','janetjackson.jpg',''),(25,'Whitney Houston','americana','whitneyhouston.jpg',''),(26,'Paralamas do Sucesso','brasileira','paralamas.jpg',''),(27,'Skank','brasileira','skank.jpg',''),(28,'Skamioneta do Lixo','portuguesa','skamioneta.jpg',''),(29,'The Skatalites','jamaicana','skatalites.jpg','');
/*!40000 ALTER TABLE `tb_artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_estilo`
--

DROP TABLE IF EXISTS `tb_estilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_estilo` (
  `id_estilo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_nome` varchar(50) NOT NULL DEFAULT '',
  `ds_estilo` varchar(2000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_estilo`
--

LOCK TABLES `tb_estilo` WRITE;
/*!40000 ALTER TABLE `tb_estilo` DISABLE KEYS */;
INSERT INTO `tb_estilo` VALUES (20,'Alternativa','Rock alternativo é um gênero de rock surgido na década de 1980 que se tornou bastante popular na década de 1990. Consiste de vários subgêneros oriundos da cena musical independente como grunge e britpop, que estão relacionados por sua influência em diversas escalas com o punk rock e que não se encaixavam em classificação alguma conhecida na época. Às vezes era usado para rotular artistas undergrounds dos anos 80 e bandas de rock and roll dos anos 90. Mais especificamente, englobava a maioria dos gêneros que surgiram nos anos 80 e que tornaram-se conhecidos nos anos 90, como o indie rock, post-punk, rock gótico e college rock. Apesar do gênero ter a estrutura de rock, muitas bandas são influenciadas pela música de seus respectivos países, sendo a influencia de folk, reggae, eletrônico e jazz facilmente encontrada. Portanto, duas bandas de rock alternativo não têm necessariamente o mesmo ritmo, sendo o termo usado para qualquer rock que se aproxime do rock clássico, mas que, não se encaixou em nenhuma de suas vertentes.'),(21,'Black Music','Todo mundo sabe que a black music é influência dos negros americanos. Mas isso começa lá na África do Norte. Os negros africanos receberam muita influência dos árabes e judeus, dos povos semitas. Por isso eles têm um jeito percussivo (rítmico) de falar as sílabas. Na cultura africana eles têm o costume de cantar com respostas as chamadas Melopéias (a repetição de uma frase que dá suporte para que o solista possa improvisar). Quando foram trazidos para a América e postos como escravos, eles cantavam pra lamentar suas tristezas, as chamadas Worksongs (adaptando o inglês para o black english, o inglês negro americano de jeito rítmico de falar). '),(22,'Black Charm','Charmeiro é utilizado para designar os apreciadores de uma vertente da black music (música negra americana), conhecida popularmente no Brasil como charme, termo usado para o R&B contemporâneo no Brasil, que se desenvolveu a partir do urban.'),(23,'Blues','Blues é um gênero e forma musical originado por afro-americanos no extremo sul dos Estados Unidos em torno do fim do século XIX. O gênero se desenvolveu a partir de raízes das tradições musicais africanas, canções de trabalho afro-americanas, spirituals e música folclórica. O blues incorporou spirituals, canções de trabalho, canto de campo, ring shout, chant e baladas narrativas simples e rimadas. A forma do blues, onipresente no jazz, no rhythm and blues e no rock and roll, é caracterizada pelo padrão de chamada e resposta, pela escala de blues e por progressões de acordes específicas, das quais o blues de doze compassos é o mais comum. Blue note é uma nota cantada ou tocada com um timbre ligeiramente mais baixo do que o da escala maior, o que faz com que a nota tenha um som distintivamente triste e melancólico; a própria palavra \"blues\", em inglês, é sinônimo de melancolia.[2] Blues shuffles ou linha de baixo reforçam o ritmo de transe e formam um efeito repetitivo conhecido como groove.'),(24,'Bossa Nova','Bossa Nova é um movimento da música popular brasileira do final dos anos 50 lançado por João Gilberto, Tom Jobim, Vinícius de Moraes e jovens cantores e/ou compositores de classe média da zona sul carioca, derivado do samba e com influência do jazz.'),(25,'Clássica','Descrição de Clássica'),(26,'Country','Uns duzentos anos atrás, muitos europeus cansados de passar fome emigraram de seus países de origem para outros cantos do mundo. Uma parte deles escolheu os Estados Unidos da América. Nessa história e para o nosso texto de hoje, interessam principalmente os irlandeses. Este povo calejado, mas com uma bela e singular cultura, criou uma vasta colônia em terras estadunidenses. Lá, viviam em paz nas regiões montanhosas que lembravam sua própria pátria, tocando suas músicas folclóricas, fazendo guerra entre si e tendo filhos. Enfim, tudo o que faziam na Irlanda. De forma grosseira, para encurtar uma história longa, essa música folclórica, rica em banjos, foi mais tarde chamada de “hillbilly music”. O caso é que da metade do século XIX pra frente, por conta da Guerra Civil Americana, o termo “hillbilly” se popularizou, servindo para designar (Geralmente de maneira ofensiva, mas não sempre) os supramencionados imigrantes irlandeses, simples gente das regiões montanhosas e suas características; entre 1861 e 1865, na vigência da guerra, muitas dessas pessoas saíram de suas comunidades, seja para lutar por um dos lados ou para fugir deles, e se estabeleceram em outras partes do país. Desse jeito, os hillbillies foram parar no cânone de estereótipos típicamente americanos.'),(27,'Disco','A música disco (também conhecida em inglês disco music ou, em francês, discothèque) é um gênero de música de dança cuja popularidade atingiu o pico em meados da década de 1970.'),(28,'Dubstep','Surgido na Inglaterra, mais precisamente em Londres, o Dubstep já possui certo tempo de estrada. Em 1998, já se ouvia artistas que faziam os primeiros sons do que é considerado o “Dubstep tradicional”. Originalmente composto de um mix de Dub, 2-Step/UK Garage, Drum ‘n’ Bass e Bassline, o som vinha do underground das noites londrinas e fazia parte da cena eletrônica que dominava o mundo na época. Reggae. Sim, Reggae. Pode soar estranho, mas o ritmo jamaicano é a \"base de uma das bases\" do Dubstep, que é o Dub - um som do gênero que é geralmente instrumental que possui ênfase na bateria e baixo da música e que apresenta uso de reverb, delay, samples de vocais ou de elementos aleatórios, como som de animais e “ruídos”.'),(29,'Eletrônica','Descrição de Eletrônica'),(30,'EMO','Emo(do inglês emo, abreviatura de emocore) é um gênero musical distinto tipicamente caracterizado pela musicalidade melódica e expressiva, e por vezes letras confessionais.'),(31,'Flash Back','Flashback significa voltar rapidamente para algo, em português, mas possui outros significados, depende onde é empregado. Neste caso, flashback é um fato acontecido no passado inserido em um momento atual, através da lembrança das pessoas, ou em um livro ou filme. É uma palavra inglesa que significa retrospecto, narração de fatos precedentes.'),(32,'Folk','A música folclórica (também conhecida pela abreviatura folk), segundo a etimologia do termo adotada no século XIX, é a música feita pela sabedoria popular (do inglês folklore: folk significa gente ou povo e lore significa conhecimento). A denominaçāo indicava especialmente a música feita pela sociedade pré-industrial, fora dos circuitos da alta cultura urbana. O termo inclui tanto a música tradicional quanto o gênero que evoluiu a partir dela durante o \"renascimento folk\" (folk revival) do século XX. O termo tem origem no século XIX, mas muitas vezes é aplicado a música que é mais antiga do que isso. Alguns tipos de música folclórica também são chamados de música do mundo (world music). O folk tradicional tem sido definido de várias maneiras: como música transmitida oralmente, música com compositores desconhecidos, ou música realizada por costume durante um longo período de tempo. Foi contrastado com estilos comerciais e clássicos.'),(33,'Forró','O Forró é uma dança popular de origem nordestina. Esta dança é acompanhada de música, que possui o mesmo nome da dança. A música de forró possui temática ligada aos aspectos culturais e cotidianos da região Nordeste do Brasil. A música de forró é acompanhada dos seguintes instrumentos musicais: triângulo, sanfona e zabumba'),(34,'Funk','Funk ostentação é um estilo musical brasileiro, criado no ano de 2008, na cidade de São Paulo. Considerado como uma vertente do funk paulista, o gênero desenvolveu-se primeiramente na Região Metropolitana de São Paulo e na Baixada Santista, antes de alcançar proporções nacionais a partir de 2011. Os temas centrais abordados nas músicas referem-se ao consumo e a propriamente dita ostentação, onde grande parte dos representantes procura cantar sobre carros, motocicletas, bebidas e outros objetos de valor, além de fazerem frequentemente citações à mulheres e ao modo de como alcançaram um maior poderio de bens materiais, exaltando a ambição de sair da favela e conquistar os objetivos.'),(35,'Grunge','Grumge é uma mistura de punk e heavy metal surgida em meados da década de 80 em Seattle, cidade no noroeste dos Estados Unidos, quase na fronteira com o Canadá. O termo grumge que em seu sentido original significa sujeira ou imundície em inglês descreve tanto o estilo visual (cabelo desgrenhado, roupas velhas e folgadas) de bandas e fãs, quanto o som saturado e distorcido das guitarras que dão o tom das músicas. Na época, ninguém poderia imaginar que bandas tão anarquistas e barulhentas pudessem tomar conta do mercado pop mundial. Mas foi exatamente isso que aconteceu em 1991, quando Nevermind, segundo álbum do trio Nirvana, derrubou ninguém menos que Michael Jackson do primeiro posto das paradas americanas, abrindo a trilha do megaestrelato para outras bandas do cenário underground de Seattle, como Pearl Jam e Alice in Chains.'),(36,'Gospel','Gospel pode ser entendido como um estilo de música dos cultos religiosos, que possui sua origem na comunidade negra norte-americana, caracterizando-se por uma harmonia simples, pelo gênero folclórico e pela intensa influência do blues.'),(37,'Gótica','A musica, um dos principais fatores, se não o principal, que levam uma pessoa à se tornar adeptos ao goticismo, bem como qualquer outro estilo (rock, punk, pop, eletrônica, etc). A música denominada gótica, em sua parte lírica, envolve temas como solidão, angústia, sofrimento, morte, sentimentos em geral, anjos, demonios a obscuridade do ser e do mundo. A linha melódica é caracterizada por acordes (normalmente) menores, que dão um ar de obscuridade e tristeza, é evidente a presença de teclados e pianos. Muitas bandas foram consideradas góticas por possuirem caracteristicas semelhantes às canções da década de 80.'),(38,'Hard Rock','Hard rock é um estilo musical, subgênero do rock que tem suas raízes do rock de garagem e psicodélico do meio da década de 1960, que se caracteriza por ser consideravelmente mais pesado do que a música rock convencional, e marcada pelo uso de distorção, uma seção rítmica proeminente, arranjos simples e um som potente, com riffs de guitarra pesada e solos complexos. A formação típica era constituída por bateria, baixo, guitarra, e algumas vezes, um piano ou teclado, além de um vocalista que muitas vezes se utilizava de vocais agudos e roucos. Nos finais dos anos 60, os termos hard rock e heavy metal eram praticamente usados como sinônimos, mas o último gradualmente começou a descrever um estilo de música tocado ainda com mais volume e intensidade. Há ainda outra diferença chave, entre ambos sub-gêneros: Enquanto o hard rock manteve sua identidade blues e algum swing na batida, as melodias do metal são frequentemente ditadas por riffs agressivos de guitarra, desprovidos de swing.'),(39,'Hip-Hop','Hip Hop é uma cultura popular que surgiu entre as comunidades afro-americanas Em Nova York na década de 1970. A música é a principal manifestação artística do hip hop, que também tem na dança e no grafite forte representação.'),(40,'Heavy Metal','Heavy metal (ou simplesmente metal) é um gênero do rock que se desenvolveu no final da década de 1960 e no início da década de 1970, em grande parte no Reino Unido e nos Estados Unidos. Tendo como raízes o blues-rock e o rock psicodélico (psicadélico, em português europeu), as bandas que criaram o heavy metal desenvolveram um som massivo e encorpado, caracterizado por um timbre saturado e distorcido dos amplificadores, pelas cordas graves da guitarra para a criação de riffs e pela exploração de sonoridades em tons menores, dando um ar sombrio às composições. O Allmusic afirma que \"de todos os formatos do rock n roll, o heavy metal é a forma mais extrema em termos de volume e teatralidade.'),(41,'Indie','A música indie nada mais é que o rock independente nascido no Reino Unido e nos Estados Unidos ao longo dos anos 80. Os artistas que seguem esta trajetória desejam percorrer um caminho mais distante do mercado musical de natureza predominantemente comercial.'),(42,'Jazz','Jazz é uma manifestação artístico-musical originária de Nova Orleães, Chicago e Nova York, nos Estados Unidos. Tal manifestação teria surgido por volta do início do século XX na região de Nova Orleães , tendo,a cultura popular e na criatividade das comunidades negras que ali viviam, um de seus espaços de desenvolvimento mais importantes.'),(43,'K-Pop','O Termo K-Pop, é a contração de Korean Pop (música pop coreana), que surgiu nos anos 90 na Coréia do Sul. O K-Pop conta com a mistura de vários ritmos como o R&B, Rock e Pop, além de suas raízes tradicionais de música coreana.'),(44,'MPB','A MPB, expressão derivada de Música Popular Brasileira, é um gênero musical brasileiro. A MPB surgiu a partir de 1966, com a segunda geração da bossa nova. Na prática, a sigla MPB anunciou uma fusão de dois movimentos musicais até então divergentes, a bossa nova e o engajamento folclórico dos Centros Populares de Cultura da União Nacional dos Estudantes, os primeiros defendendo a sofisticação musical e os segundos, a fidelidade à música de raiz brasileira. Seus propósitos se misturaram e com o golpe de 1964, os dois movimentos se tornaram uma frente ampla cultural contra o regime militar, adotando a sigla MPB na sua bandeira de luta.'),(45,'Pop','Música popular no geral, veja Música popular. Música pop Procurar imagens disponíveis Origens estilísticas	Pop tradicional folk rock and roll Contexto cultural	Década de 1950 nos Estados Unidos e Reino Unido Formas derivadas	Disco new wave Subgêneros Art pop bubblegum pop dance-pop pop experimental hypnagogic pop pop operático pop progressivo sophisti-pop space age pop sunshine pop teen pop Gêneros de fusão Pop barroco beat Cristã contemporânea country pop electropop indie pop Pop Latino noise pop pop punk pop rap pop rock power pop pop psicodélico reggae fusion smooth jazz smooth soul synthpop R&B contemporâneo A música pop (em inglês: pop music; um termo que deriva da abreviação de \"popular\") é um gênero da música popular que se originou durante a década de 1950 nos Estados Unidos e Reino Unido.'),(46,'Punk','Numa época em que as músicas que tocavam nas rádios duravam de dez a quinze minutos, com grandes solos de guitarra e bateria, surge uma música rápida, curta e simples, tocada por rapazes cansados de ouvir hinos hippies e que decidem fazer suas próprias músicas, mesmo não sabendo tocar sequer um acorde. Assim nasce o punk rock em Nova Iorque entre 1974 e 1975, tendo como principal representante os Ramones. Eles já herdavam influências significativas como o MC5 e Stooges, e começam a tocar sem nenhuma pretensão além da diversão, tentando resgatar um pouco do rock dos anos 50 e 60.'),(47,'RAP','Rap (em inglês, também conhecido como emceeing) é um discurso rítmico com rimas e poesias, que surgiu no final do século XX entre as comunidades negras dos Estados Unidos. É um dos cinco pilares fundamentais da cultura hip hop, de modo que se chame metonimicamente (e de forma imprecisa) hip hop.'),(48,'R&B','Teve uma série de mudanças no seu significado. Começando na década de 1960, após este estilo de música contribuir para o desenvolvimento do rock and roll, a expressão R&B passou a ser utilizada – especialmente por grupos brancos – para se referir a estilos musicais que se desenvolveram a partir do blues e do associado eletric blues, bem como o gospel e a soul music.'),(49,'Reggae','O reggae baseia-se num estilo rítmico caracterizado pela acentuação no tempo fraco, conhecido como skank. O estilo normalmente é mais lento que o ska e o rocksteady, e seus compassos normalmente são acentuados na segunda e na quarta batida, com a guitarra base servindo ou para enfatizar a terceira batida, ou para segurar o acorde da segunda até que o quarto seja tocado.'),(50,'Reggaeton','O reggaeton é um estilo musical que tem suas raízes na música latina e caribenha. Seu som deriva do reggae em espanhol do Panamá, influenciado pelo hip hop, salsa e música eletrônica. Esse gênero musical surgiu no Panamá, tirado do estilo eletrônico, e logo se popularizou em Porto Rico e se espalhou para o mundo. A maioria das musicas contém letras com conteúdo sexual, porém existem temas pop, românticos, urbanos contando a realidade das ruas, sobre drogas e claro, sobre festas e ostentação .'),(51,'Rock','Rock é um termo abrangente que define um gênero musical de música popular que se desenvolveu durante e após a década de 1950. Suas raízes se encontram no rock and roll e no rockabilly que emergiram e se definiram nos Estados Unidos no final dos anos quarenta e início dos cinquenta e que, por sua vez, evoluíram do blues, da música country e do rhythm and blues. Outras influências musicais sobre o rock ainda incluem o folk, o jazz e a música clássica. Todas estas influências foram combinadas em uma estrutura musical simples baseada no blues que era \"rápida, dançável e pegajosa\".'),(52,'Rockabilly','Havia um relacionamento próximo entre o R&B e a música country nas primeiras gravações de country da década de 1920. O primeiro sucesso considerado \"country\" nos Estados Unidos foi \"Wreck of the Old 97\", lançada em conjunto com \"Lonesome Road Blues\", que também se tornou bastante popular. Jimmie Rodgers, o \"primeiro astro do country de verdade\", era conhecido como \"Blue Yodeler\", embora com instrumentação e sonoridade bastante diferente de seus contemporâneos Blind Lemon Jefferson e Bessie Smith.'),(53,'Samba','O samba é considerado por muitos críticos de música popular, artistas, historiadores e cientistas sociais como o mais original dos gêneros musicais brasileiros ou o gênero musical tipicamente brasileiro. A despeito da centralidade ou não do samba como gênero musical nacional, sua origem (ou a história de sua origem) nos traz o registro de uma imensa mistura de ritmos e tradições que atravessam a história do país.'),(54,'Sertanejo','O sertanejo se caracteriza pela melodia simples e melancólica das músicas, bem semelhante à música caipira, talvez um pouco mais dançante e sem dúvida, mais urbana. Enquanto a música caipira tinha uma temática baseada na vida do campo, os sertanejos mudaram essa temática para agradar o grande público das cidades, adotando temas como amor e traição. Ocorreu o cuidado particular em se evitar o termo “caipira”, visto com preconceito por grande parte da população.'),(55,'Ska','Ska é um gênero musical que teve a sua origem na Jamaica no final da década de 1950, combinando elementos caribenhos como o mento e o calipso e estadunidenses como o jazz, jump blues e rhythm and blues.'),(56,'Soul','Soul (em inglês: alma) é um gênero musical dos Estados Unidos que nasceu do rhythm and blues e do gospel durante o final da década de 1950 e início da década de 1960 entre os negros. Durante a mesma época, o termo soul já era usado nos Estados Unidos como um adjetivo usado em referência ao afro-americano, como em \"soul food\" (\"comida de alma\"). Esse uso apareceu justamente numa época de vários movimentos de liberalismo social, tanto com a revolução dos jovens com o uso das drogas, como os movimentos antiguerra e antirracial. Por consequência, a \"música soul\" nada mais era que uma referência a música dos negros, independente de gênero.'),(57,'Vaporwave','Vaporwave é um gênero musical e um movimento artístico que surgiu no início da década de 2010, entre diversas comunidades online.');
/*!40000 ALTER TABLE `tb_estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_musica`
--

DROP TABLE IF EXISTS `tb_musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_musica` (
  `id_musica` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_nome` varchar(50) NOT NULL DEFAULT '',
  `id_album` int(10) DEFAULT NULL,
  `ds_youtube` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_musica`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_musica`
--

LOCK TABLES `tb_musica` WRITE;
/*!40000 ALTER TABLE `tb_musica` DISABLE KEYS */;
INSERT INTO `tb_musica` VALUES (20,'Faixa 1',20,'ccdscdscds'),(21,'Faixa 2',20,'www.youtube.com/faixa2'),(22,'Faixa 3',20,'www.youtube.com/faixa3'),(23,'Faixa 21',21,'www.youtube.com/faixa21'),(24,'Faixa 22',21,'www.youtube.com/faixa22'),(25,'The Smile in Your Face',22,'www.youtube.com/thesmileinyourface');
/*!40000 ALTER TABLE `tb_musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wikimusic'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 16:14:45
