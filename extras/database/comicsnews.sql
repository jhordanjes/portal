-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Ago-2018 às 02:15
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comicsnews`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `subtitulo` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `subtitulo`, `descricao`, `img`, `data`, `autor`) VALUES
(57, 'Bebê de um mês é resgatado após mãe ser denunciada por maus-tratos, em Manaus', 'Mulher estaria com o filho sob efeito de bebidas alcoólicas na Avenida Brasil, segundo informações d', 'Uma criança com pouco mais de um mês de vida foi resgatada nesta quarta-feira (1º), após a mãe ser denunciada por maus-tratos. Segundo a Polícia Militar, a mulher estava com bebê na Avenida Brasil, na Zona Oeste de Manaus, e tinha sintomas de embriaguez.\r\n\r\nO resgate ocorreu por volta de 9h, na via, que é uma das principais do bairro Compensa. De acordo com a 5ª Companhia Interativa Comunitária (Cicom), a denúncia informou que a criança estava sendo vítima de maus-tratos.\r\n\r\nA equipe foi até o local e avistou a mulher, possivelmente sob efeito de álcool, em posse da criança.\r\n\r\nPor conta disso, ela foi levada para a Delegacia Especializada em Proteção a Criança e ao Adolescente (DEPCA). No local, ela foi ouvida e assinou um Termo Circunstanciado de Ocorrência (TCO) por exposição ao perigo.\r\n\r\nO bebê foi levado para o Serviço de Acolhimento Institucional.', 'extras/img/noticia20.jpg', '2018-08-27 23:15:48', 'Noeme Caroline Santos'),
(58, 'Dobra emissão de carteiras de trabalho para estrangeiros no AM durante primeiro semestre de 2018', 'Aumento de documentos emitidos para estrangeiros foi motivado pelo fluxo migratório de venezuelanos.', 'O Amazonas registrou aumento de 17,5% na emissão de Carteiras de Trabalho e Previdência Social (CTPSs) no primeiro semestre deste ano, quando comparado com os primeiros seis meses de 2017. Foram emitidas mais 52 mil carteiras de trabalho até junho. A emissão para trabalhadores estrangeiros dobrou no Amazonas. Esse aumento foi impulsionado com a grande quantidade de imigrantes venezuelanos devido à crise em seu país de origem. Os dados foram divulgados pelo Ministério do Trabalho, nessa quarta-feira (1º).\r\n\r\nNo primeiro semestre de 2018, o Ministério do Trabalho e os Sines emitiram 52.061 carteiras no estado. Enquanto de janeiro a junho do ano passado foram emitidos 44.294 documentos para trabalhadores.\r\n\r\nApesar de não ser maioria das pessoas solicitantes de CTPSs no estado, 2.548 trabalhadores estrangeiros receberam a carteira de trabalho brasileira no Amazonas, somente no primeiro semestre deste ano. Já no mesmo período do ano passado, o grupo de estrangeiros que solicitou o documento foi 1.050. Houve aumento de 142,1% na quantidade de emissões de CTPSs para estrangeiros no Amazonas.', 'extras/img/noticia19.jpg', '2018-08-27 23:22:04', 'Noeme Caroline Santos'),
(59, 'Máquina escavadeira tomba e rompe tubulação de água na Zona Norte de Manaus', 'Trabalhadores realizavam serviço de drenagem profunda no momento do incidente.', 'Uma máquina escavadeira tombou quando trabalhadores realizavam um serviço de drenagem profunda no Conjunto Canaranas 1, bairro Cidade Nova, Zona Norte de Manaus. Com o incidente, ocorrido nesta quinta-feira (2), o peso do veículo causou o rompimento de uma tubulação pertencente à rede de distribuição de água e o abastecimento foi interrompido.', 'extras/img/noticia18.jpg', '2018-08-27 23:26:44', 'Noeme Caroline Santos'),
(60, 'Polícia captura suspeito de envolvimento em série de assassinatos em Manaus', 'Alexandre Alves da Silva, foi preso na cidade de Teresina (PI).', 'Alexandre Alves da Silva, conhecido como \"Cagão\", foi preso nesta quinta-feira (2) na cidade de Teresina (PI). Ele e outros cinco homens são investigados por suspeita de envolvimento em parte dos mais de 180 homicídios ocorridos entre junho e julho em Manaus. Silva estava foragido desde o dia 12 de maio, quando fugiu por meio de um túnel com outros 34 detentos do Centro de Detenção Provisória 2 (CDPM 2), situado no ramal do km 8 da BR- 174.', 'extras/img/noticia17.jpeg', '2018-08-27 23:29:37', 'Noeme Caroline Santos'),
(61, 'Pedreiro é suspeito de invadir casa onde já trabalhou e agredir idosa em assalto no AM', 'Mulher foi internada em estado grave. Homem teria feito cópia de chave durante serviço.', 'Um pedreiro, de 33 anos, foi preso suspeito de agredir e roubar uma mulher, de 61, no bairro Chapada, Zona Centro-Sul de Manaus. O crime aconteceu na madrugada de quinta-feira (2). Ele havia prestado serviço na casa da vítima e tinha tirado uma cópia da chave do local, escondido. A idosa teve fraturas no maxilar e foi internada em estado grave.', 'extras/img/noticia16.jpg', '2018-08-27 23:32:29', 'Noeme Caroline Santos'),
(62, 'TRE-AM recebe primeiro pedido de registro de candidatura ao governo para eleições 2018', 'PSTU solicitou registro de candidatura nesta quinta-feira (2).', 'Tribunal Regional Eleitoral (TRE-AM) recebeu, nessa quinta-feira (2), o primeiro pedido de registro de candidatura para as eleições 2018. O primeiro pedido foi feito pelo partido PSTU, que entregou mídia digital necessária para o requerimento, na sede do órgão em Manaus.\r\nA eleição de 2018 será a primeira em que o registro deve ser feito integralmente por meio digital, não havendo a entrega de qualquer documento em papel.', 'extras/img/noticia15.jpg', '2018-08-27 23:34:36', 'Jhordan Jesse Oliveira'),
(63, 'Crimes contra idosos aumentam em 2 anos e mais de 2,7 mil casos são registrados em Manaus no 1º semestre de 2018', 'Veja como denunciar crimes contra idosos em Manaus.', 'O número de crimes praticados contra idosos cresceu em Manaus nos últimos dois anos. Só em 2018, foram registrados 2.728 casos na capital pelo Sistema Integrado de Segurança Pública (Sisp). Furtos, roubos, ameaças e estelionatos lideram as ações criminosas contra os idosos na capital. Na maioria dos casos, os autores dos crimes são da própria família das vítimas. A vulnerabilidade dos idosos os tornam presas fáceis para os criminosos que cometem crimes financeiros.', 'extras/img/noticia14.jpg', '2018-08-27 23:36:59', 'Janival Vieira'),
(64, 'Operação prende suspeitos de triplo homicídio e foragidos do CDPM 2, em Manaus', 'Operação prende suspeitos de triplo homicídio e foragidos do CDPM 2, em Manaus', 'Nove pessoas foram presas durante a continuação da Operação Hórus, realizada neste sábado (4), em Manaus. Entre os presos estão dois suspeitos de participar de um triplo homicídio em um sítio na estrada de Balbina no mês de março, além de dois dos 35 detentos que fugiram do Centro de Detenção Provisória Masculino 2 (CDPM 2) por um túnel, em maio.\r\nDurante a operação, foram apreendidos com os suspeitos uma espingarda, quatro armas de fogo, uma granada e porções de entorpecentes. A polícia afirma que os presos são integrantes de uma facção criminosa que atua no Amazonas.', 'extras/img/noticia13.jpg', '2018-08-27 23:38:52', 'Noeme Caroline Santos'),
(65, 'Cinco mulheres são pegas com drogas em partes íntimas durante visitas em presídios no AM', 'Ocorrências foram registradas no Ipat e no CDPM, neste fim de semana.', 'Cinco mulheres foram flagradas com drogas durante procedimento de revista de visitantes no Instituto Penal Antônio Trindade (Ipat) e no Centro de Detenção Provisória de Manaus (CDPM), neste sábado (4). Elas seriam companheiras de detentos e tentaram esconder porções de entorpecentes nas partes íntimas.\r\nAs ocorrências foram registradas pela Secretaria de Estado de Administração Penitenciária (Seap). A maioria dos casos foi registrada no Ipat, onde quatro mulheres tentaram entregar porções de maconha aos companheiros presos na unidade, localizada no km 8 da rodovia BR-174.', 'extras/img/noticia12.jpg', '2018-08-27 23:41:18', 'Jhordan Jesse Oliveira'),
(66, 'Dupla invade panificadora e rouba mais de R$ 30 mil, no Centro de Manaus', 'Funcionários e proprietário do local foram amarrados e agredidos em ação.', 'Dois homens ainda não identificados invadiram uma panificadora no Centro de Manaus e roubaram mais de R$ 30 mil nesta segunda-feira (6). Durante a ação, os funcionários e o proprietário do local foram agredidos. A polícia investiga o caso.\r\n\r\nO roubo foi registrado por câmeras de segurança da panificadora, situada na Avenida Floriano Peixoto. Na ação, um dos criminosos armado vai até o escritório, amarra três funcionários e os agride.', 'extras/img/noticia11.jpg', '2018-08-27 23:43:01', 'Janival Vieira'),
(67, 'Amazonas registra aumento de 5,3% nas mortes violentas intencionais em 2017', 'Anuário Brasileiro de Segurança Pública divulgou dados nesta quinta-feira (9).', 'O aumento de 5,3% na taxa de mortes violentas entre 2016 e 2017 . Com isso, a taxa saltou de 29,7 para 31,3 mortes por 100 mil habitantes. Os dados são do Fórum Brasileiro de Segurança Pública, divulgados nesta quinta-feira (9).\r\n\r\nEm números absolutos, foram 1.271 mortes violentas no ano passado, o que representa alta de 6,9% em comparação com 2016, com 1.189 mortes no estado.', 'extras/img/noticia10.jpg', '2018-08-27 23:44:55', 'Noeme Caroline Santos'),
(68, 'Suspeito de roubo morre e outro é preso após perseguição policial em Manaus', 'Troca de tiros ocorreu nesta quarta-feira (8) no bairro Nossa Senhora de Fátima 1, Zona Norte.', 'Um homem morreu e outro foi preso após uma perseguição policial na noite desta quarta-feira (8) no bairro Nossa Senhora de Fátima 1, Zona Norte de Manaus. Segundo a polícia, a dupla roubou o carro de uma estudante e, durante a fuga, atirou contra a equipe policial.\r\n\r\nO roubo ocorreu na Rua 211, situada no núcleo 16 do bairro Cidade Nova, Zona Norte da capital. A universitária Raiza Pereira, de 25 anos, chegava próximo da residência onde mora quando foi abordada pelos criminosos, que estavam em um veículo modelo Siena.', 'extras/img/noticia9.jpg', '2018-08-27 23:46:24', 'Janival Vieira'),
(69, 'Suspeito de envolvimento em linchamento de estudante é preso em Manaus', 'Segundo a polícia, ele confirmou participação no crime.', 'Um homem de 21 anos foi preso nesta sexta-feira (10) por suspeita de envolvimento no linchamento do estudante Kaiubi de Oliveira Carvalho, 16. Segundo a polícia, ele confirmou participação no crime. O suspeito foi capturado no bairro Jorge Teixeira, Zona Leste de Manaus, mesma área onde o crime ocorreu.\r\n\r\nDe acordo com o tenente-coronel Franciney Bó, uma denúncia levou a equipe policial até a localização do suspeito, que estava na Rua Verbaco, por volta das 17h.', 'extras/img/noticia8.jpg', '2018-08-27 23:48:48', 'Jhordan Jesse Oliveira'),
(70, 'Manaus teve média de 87 celulares roubados e furtados por dia no primeiro semestre de 2018', 'Até junho, mais de 15 mil aparelhos de telefonia móvel foram furtados e roubados na capital.', 'A cada dia do ano de 2017 foram roubados e furtados, em média, 66 celulares em Manaus, de acordo com dados da Secretaria de Segurança Pública do Amazonas (SSP-AM). A ação dos criminosos avançou e, essa média de furtos e roubos saltou para 87 aparelhos celulares furtados e roubados diariamente na capital, somente nos seis primeiros meses deste ano. Os assaltantes, em alguns casos, mataram as vítimas para roubar os aparelhos.\r\n\r\nForam furtados e roubados 24.213 celulares no ano passado em Manaus. Os criminosos foram responsáveis pelo furto e roubo de 15.921 aparelhos de telefonia móvel, de janeiro a junho deste ano.', 'extras/img/noticia7.jpg', '2018-08-27 23:51:02', 'Noeme Caroline Santos'),
(71, 'Jovem é morto após ser abordado por homens armados em carro, na Zona Oeste de Manaus', 'Vitima foi atingida por tiros.', 'Um jovem de 23 anos foi morto a tiros, na tarde deste domingo (12), enquanto caminhava em via pública no bairro Vila da Prata, na Zona Oeste de Manaus.\r\n\r\nO crime ocorreu na rua Arthur Virgílio. Segundo populares, os criminosos chegaram no local em um carro cinza. Dois saíram do veículo - um deles usava, inclusive, uma bala clava.', 'extras/img/noticia6.jpg', '2018-08-27 23:53:03', 'Jhordan Jesse'),
(72, 'Briga entre vizinhas termina com dois mortos a facadas, em Manaus', 'Segundo a polícia, mulheres brigaram por conta de roupa e maridos se envolveram na discussão. Caso ocorreu em comunidade no Tarumã, na Zona Norte.', 'Dois homens morreram após uma briga entre vizinhos na Comunidade União da Vitória, bairro Tarumã, Zona Norte de Manaus, na tarde deste domingo (12). Segundo a polícia, a confusão começou depois que as esposas de moradores iniciaram uma discussão.\r\n\r\nO caso ocorreu no fim da tarde. Segundo a Polícia Civil, a briga começou entre as esposas de dois moradores. Uma delas teria ido na casa da outra para cobrar a devolução de uma roupa que ela havia emprestado.\r\n\r\nA polícia conta que a vizinha se negou a devolver e as duas começaram a discutir. Os companheiros das mulheres também se envolveram na briga, bem como outro vizinho.', 'extras/img/noticia5.jpg', '2018-08-27 23:54:02', 'Noeme Caroline Santos'),
(73, 'Casal suspeito de roubar carro com quase R$ 30 mil em jóias é preso, em Manaus', 'Ambos foram capturados nesta terça-feira (14) na Zona Norte da capital.', 'Um casal foi preso nesta terça-feira (14) por suspeita de roubar um carro no bairro Colônia Terra Nova, Zona Norte de Manaus. Dentro do veículo, os militares encontraram mostruários de jóias avaliadas em R$ 28 mil.\r\n\r\nA Polícia Militar (PM-AM) informou que o roubo do carro modelo Mob ocorreu por volta das 14h na Rua Louro Abacate, bairro Monte das Oliveiras, Zona Norte. Uma equipe foi acionada e localizou o veículo abandonado na Rua Bem-Bom, já no Colônia Terra Nova.', 'extras/img/noticia4.jpg', '2018-08-27 23:57:00', 'Janival Vieira'),
(74, 'Ex-babá denuncia abuso sexual de desembargador suspeito de estuprar neta, no AM', 'A defesa do desembargador diz que a vítima nunca trabalhou para ele.', 'Uma ex-funcionária da família do desembargador Rafael de Araújo Romano denunciou o magistrado por abuso sexual, que teria ocorrido na época em que ela trabalhava como babá para a família. Segundo o advogado que acompanhou a vítima, ela resolveu abrir o caso após a divulgação das denúncias de que o desembargador abusou da própria neta durante cerca de sete anos. A mulher afirmou, em denúncia, que os abusos iniciaram quando ela era menor de idade.', 'extras/img/noticia3.jpg', '2018-08-27 23:58:07', 'Janival Vieira'),
(75, 'Homem é preso e adolescente é apreendido por suspeita de assaltar ônibus em Manaus', 'Passageiros reagiram durante a ação criminosa.', 'Um homem de 24 anos foi preso e um adolescente, de 15, foi apreendido por suspeita de assaltar um ônibus do transporte coletivo na comunidade Campos Sales, Zona Oeste de Manaus. Ambos foram capturados nesta quarta-feira (22) depois que os passageiros reagiram durante a ação criminosa.\r\n\r\nDe acordo com o sargento Gilson Santos, da 20ª Companhia Interativa Comunitária (Cicom), a dupla estava em um coletivo da linha 126 quando anunciou o assalto utilizando facas. Quando o veículo passava pela Rua Jacamim, um dos passageiros reagiu e conseguiu desarmar um dos suspeitos.', 'extras/img/noticia2.jpeg', '2018-08-27 23:59:37', 'Jhordan Jesse'),
(76, 'AM tem mais de mil casos confirmados de sarampo entre capital e interior', 'Fundação de Vigilância em Saúde (FVS) aponta um total de 7.912 casos notificados da doença em todo o Estado.', 'O Amazonas tem 1.087 casos confirmados de sarampo em Manaus e em outros nove municípios. O número foi divulgado nesta terça (21) pela Fundação de Vigilância em Saúde (FVS), que aponta um total de 7.912 casos notificados da doença em todo o Estado.\r\nA FVS informou que 70,71% do público alvo no Amazonas já recebeu a dose da vacina contra o sarampo, o que representa 215,6 mil crianças. O número é um resultado parcial da Campanha Nacional de Vacinação contra Sarampo e Poliomielite, que irá ocorrer até 31 de agosto. Com relação à polio, a cobertura chegou a 49,48%.', 'extras/img/noticia1.jpg', '2018-08-28 00:01:20', 'Carol Santos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
