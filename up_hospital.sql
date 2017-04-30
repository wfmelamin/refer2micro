-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 30 2017 г., 20:15
-- Версия сервера: 5.7.17-0ubuntu0.16.04.1
-- Версия PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `up_hospital`
--

-- --------------------------------------------------------

--
-- Структура таблицы `agents_list`
--

CREATE TABLE `agents_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `agents_list`
--

INSERT INTO `agents_list` (`id`, `name`) VALUES
(1, 'Agent 1'),
(2, 'Agent 2'),
(3, 'Agent 3'),
(4, 'Agent 4'),
(5, 'test'),
(6, 'tester');

-- --------------------------------------------------------

--
-- Структура таблицы `allergies`
--

CREATE TABLE `allergies` (
  `id` int(11) NOT NULL,
  `micro_referral_id` int(11) NOT NULL,
  `allergy_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `allergies`
--

INSERT INTO `allergies` (`id`, `micro_referral_id`, `allergy_id`, `description`) VALUES
(4, 2, 3, 'Nemo culpa aut quisquam corporis. Molestias ipsam dolor sed porro. Nam ut saepe rerum dolore doloremque ea aliquam.'),
(5, 2, 2, 'Dolorem quo asperiores beatae sed voluptatibus. Vel aut debitis voluptatum quidem qui repellat ipsam qui.'),
(6, 2, 2, 'Quis sed nesciunt est. Nam explicabo et exercitationem pariatur placeat labore accusamus et.'),
(7, 3, 3, 'Nostrum sit qui nam. Consectetur non vel dolorem quis harum molestiae similique. Quo error quo ut et dignissimos harum.'),
(8, 3, 1, 'Commodi sapiente quod ducimus atque doloremque. Numquam unde voluptatum quaerat aut voluptatem repellat quasi. Qui consequatur quia et. Dolores et praesentium minima reiciendis.'),
(9, 3, 1, 'Nemo officia est tempora voluptas. Reprehenderit molestias maxime inventore porro. Quo nemo ut a dolores qui magni. Quae voluptas adipisci libero. Cumque ex laboriosam culpa hic tempore sunt.'),
(10, 4, 3, 'Reprehenderit eum maiores qui nihil quas in. Unde enim sunt veritatis architecto cupiditate magni quia. Qui saepe iusto voluptatibus autem et atque odio. Veritatis officia aut deserunt est.'),
(11, 4, 1, 'Voluptates hic quo id est molestiae. Qui libero expedita qui et voluptate. Laboriosam esse amet deserunt.'),
(12, 4, 2, 'Amet voluptatibus magnam ut inventore. Similique enim ea culpa nesciunt. Officia et fugit minima iure voluptatibus.'),
(13, 5, 3, 'Voluptatibus non modi modi id quo et. Natus eligendi cupiditate consequatur accusantium quam. Eligendi rem dolores ratione.'),
(14, 5, 2, 'Unde nobis officiis quo voluptatem. Qui iusto aperiam recusandae. Laudantium quis iste dolorem ut quia est.'),
(15, 5, 2, 'Veniam maiores blanditiis odit vitae quibusdam laudantium eius. Eaque rerum quibusdam repellendus rem. Nihil deserunt et aut occaecati perferendis sequi ut. Rem aut amet qui esse voluptatem quasi.'),
(16, 6, 3, 'Tempore aliquid nostrum ut totam iste quas libero voluptas. Fuga distinctio ut perferendis ipsam dolores. Natus aut corrupti corrupti sequi. Voluptate cumque recusandae aut necessitatibus.'),
(17, 6, 3, 'Enim labore at magni inventore et sit ut. Illo velit recusandae possimus ad quia qui rerum nihil. Eum quo eius animi est aut doloremque.'),
(18, 6, 2, 'Qui explicabo omnis aut fuga facilis autem nisi. Et doloremque sint dolor non perferendis. Consequatur reprehenderit magni expedita libero distinctio eius aut.'),
(19, 7, 1, 'Hic sunt et non eaque officiis et sed ad. Assumenda reprehenderit quisquam corporis doloribus. Maiores iste necessitatibus aliquam eius.'),
(20, 7, 3, 'Possimus quas in qui quis et consectetur. Sunt recusandae consequatur debitis esse et et. Nostrum beatae minima debitis necessitatibus voluptatibus. Et itaque sit deleniti quia velit distinctio quis.'),
(21, 7, 1, 'Placeat dolor veritatis quaerat vitae ea ut aperiam. Molestiae unde ut repellendus est. Vel optio fugiat velit id enim optio.'),
(22, 8, 3, 'Nemo rerum natus sit est nemo. Odio pariatur repellat quo impedit id et.\nQui et beatae officia adipisci aut labore. Qui et eveniet corrupti sint. Aut in maxime eos enim eum.'),
(23, 8, 2, 'Repellat a laboriosam eius corrupti. Nisi inventore fuga placeat rerum modi qui. Modi quisquam asperiores harum sed nobis.'),
(24, 8, 1, 'Culpa amet alias est neque accusantium quasi nam. Impedit ut est magni voluptates autem. Corporis voluptatem voluptatem odio vel qui qui ad. Provident exercitationem natus et omnis natus quidem.'),
(25, 9, 1, 'Corporis et modi odio eos. Minus suscipit natus modi magni. Velit inventore autem distinctio et est reiciendis assumenda. Fugit quis et repellat odit consequatur quisquam.'),
(26, 9, 3, 'Facere non pariatur deleniti molestiae sunt numquam quam. Nihil officiis placeat pariatur explicabo temporibus libero autem. Architecto expedita sint quis mollitia est.'),
(27, 9, 2, 'Ex sit sunt aut. Ratione iste dolorum vel ipsam culpa et. Eligendi asperiores voluptatem dolorem minus voluptas rerum voluptatibus.'),
(28, 10, 3, 'Hic fugiat recusandae alias et sit. Saepe id cum aut rem libero rerum laboriosam. Exercitationem voluptatem et et. Necessitatibus nostrum autem sit delectus. Ut quo rerum earum sunt.'),
(29, 10, 3, 'Expedita quibusdam aliquid voluptatem unde sint qui. Ratione reprehenderit ipsa consequatur vitae rerum omnis et. Sunt nihil unde dolores ullam occaecati. Laborum sunt quis reiciendis aperiam quia.'),
(30, 10, 3, 'Sequi tempore quasi ut earum est eos impedit. Facilis autem rerum dolorem quae. Facere laboriosam repellat odio est quaerat ut velit aperiam. Enim aut quas rerum optio asperiores.'),
(31, 11, 3, 'Numquam adipisci deleniti natus deserunt. Dolor laborum similique voluptas nihil asperiores. Eligendi nobis dicta placeat voluptas libero. Numquam maxime asperiores quo provident beatae quos.'),
(32, 11, 3, 'Culpa dolorem qui hic expedita nobis. Voluptas voluptates ex sit. Dignissimos numquam et fuga autem. Ut voluptatem beatae voluptate.'),
(33, 11, 3, 'At sunt vero asperiores nemo praesentium vel. Delectus perferendis autem consequuntur dicta aut. Ducimus voluptas ut provident hic animi. Explicabo quas expedita quis dolor fugiat magnam tempore.'),
(34, 12, 1, 'Dolore quasi vitae dolorum laudantium sunt. Exercitationem incidunt incidunt sapiente recusandae molestiae.'),
(35, 12, 3, 'Distinctio sed odio quia. Eos nisi mollitia cum illum corporis. Quia sapiente consectetur provident et ut.'),
(36, 12, 2, 'Unde qui consequatur sed dolore. Sed at nostrum beatae qui dolore earum sunt. Dolorem alias voluptatem sapiente consequatur. Iusto pariatur saepe amet ipsam tempore doloremque iure.'),
(37, 13, 2, 'Ducimus aut ut et et. Iusto atque sed eligendi modi mollitia explicabo. Aliquid est quo qui sint consectetur.'),
(38, 13, 2, 'Dolorem nihil nisi molestiae ipsam molestiae doloribus. Porro ab itaque dolorem illo. Neque et ex sunt non. Pariatur ipsam esse vitae expedita dicta.'),
(39, 13, 3, 'Blanditiis veritatis qui nulla sapiente et consequatur reiciendis. Natus eos sit expedita sint. Reprehenderit vero qui nesciunt molestiae corporis et blanditiis.'),
(40, 14, 3, 'Ipsa dicta optio optio accusamus ex. Dignissimos ullam voluptatem dolorem illum.'),
(41, 14, 1, 'Voluptatem aliquid quidem quo voluptatum. Odio tempora nesciunt cumque ad explicabo.\nProvident beatae pariatur amet labore voluptas repellendus veniam. Officia fugit inventore nesciunt quia.'),
(42, 14, 3, 'Ipsa est odio debitis blanditiis fuga harum et. Rerum recusandae explicabo reprehenderit dolore. Sunt qui eum hic quia est libero harum.'),
(43, 15, 1, 'Officia enim odio saepe corporis soluta sunt aut doloremque. Id quod ex quis error necessitatibus minus. Quis et quos quisquam. Qui sed ut expedita qui. Dolore aut eaque rem error.'),
(44, 15, 2, 'Aut nam amet nam. Enim exercitationem pariatur eum iste. Nihil praesentium sit non quo est aut.'),
(45, 15, 2, 'Non id et soluta sed aut debitis. At voluptatem et atque quidem. Aut eum qui vero nam aut placeat.'),
(46, 16, 1, 'Dolor iusto facere temporibus. Autem porro est excepturi voluptatem provident aut. Quo sint excepturi architecto sunt aut.\nEx aut atque esse dolor libero reiciendis delectus. Vitae et et quia non.'),
(47, 16, 3, 'Labore maxime autem aut distinctio. Necessitatibus praesentium voluptate voluptatibus quo.'),
(48, 16, 2, 'Velit illum quia occaecati inventore. Aspernatur sint laudantium consequatur aut et exercitationem exercitationem.'),
(49, 17, 3, 'Voluptatem unde doloremque voluptas dolores illum laboriosam. Consectetur iusto dolor excepturi doloremque dolorem. Delectus aspernatur aut reprehenderit iure. Sed aut natus fugit voluptas sed sit.'),
(50, 17, 3, 'Nisi non omnis sed omnis. Quasi explicabo veritatis omnis incidunt. Omnis eum aut iusto quibusdam et et.'),
(51, 17, 1, 'Totam ipsa quia tempore quo. Corporis doloribus tenetur omnis. Temporibus voluptates et doloremque et natus ut deserunt asperiores.'),
(52, 18, 2, 'Odit vero id amet molestiae aspernatur. Optio quod voluptates illum fugit nihil. Consequatur aspernatur doloremque nemo magni quia voluptates et eveniet.'),
(53, 18, 1, 'Delectus alias praesentium iure fugiat saepe. Quis laudantium eum voluptas non provident et. Sit vel impedit natus nihil.'),
(54, 18, 3, 'Eum architecto et dolorum esse corrupti. Nisi et praesentium et expedita qui. Velit ut aut tenetur nihil dolor.'),
(55, 19, 2, 'Velit itaque a repellendus ab quam. Impedit reprehenderit sunt dolorem illum architecto placeat.'),
(56, 19, 1, 'Tenetur similique quibusdam cum laboriosam dolorem id. Dolores rerum quia veniam alias officia aperiam qui. Fugit ut iusto eligendi. Aut ut voluptatum rerum exercitationem minima ipsum.'),
(57, 19, 2, 'Voluptatem sapiente sit incidunt laborum. Itaque alias similique necessitatibus voluptatem aut velit reiciendis.'),
(58, 20, 3, 'Suscipit quia asperiores sint iusto sit. Tempore minima quasi ex. Nihil repellendus eum laborum dicta velit labore et. Nesciunt et sed at ipsam aliquid beatae perspiciatis.'),
(59, 20, 3, 'Perspiciatis aut magni qui. Perferendis quia est qui officia nostrum ullam ut. Odio quisquam sed perferendis neque ullam repudiandae. Aut sed sed fugiat quia provident fugit.'),
(60, 20, 1, 'Incidunt enim atque mollitia commodi est. Magnam dolor ea eius in cumque impedit quia. Esse minus dolorem ea animi eveniet minima.'),
(61, 21, 2, 'Sed impedit cum voluptas iste qui culpa dolore velit. Nihil nihil sunt voluptatem. Quia qui asperiores ea ipsum fugit in. Eligendi sed earum voluptatum quo quasi pariatur minus.'),
(62, 21, 1, 'Aut et dicta tenetur autem velit repellendus quas inventore. Nostrum vero et ipsum est harum delectus autem nobis. Nam nisi provident itaque et molestiae.'),
(63, 21, 2, 'Ad eum excepturi officia sit harum aliquam numquam. Explicabo nulla fugiat et voluptas ea.'),
(64, 22, 2, 'Aut accusamus in consequatur quasi a. Odio officiis nam veritatis fugiat. Assumenda porro officiis exercitationem sit et repellendus. Atque minima voluptatem omnis et id ipsa aliquid.'),
(65, 22, 3, 'Et voluptas aperiam repudiandae placeat. Doloribus ut amet porro voluptas.'),
(66, 22, 2, 'Natus officiis facere aut numquam aut laboriosam. Aut qui et eum qui commodi. Quod eaque aut iusto velit.'),
(67, 23, 2, 'Necessitatibus omnis hic non veniam voluptate placeat. Facilis sit inventore qui eos dolorem id. Magni rerum iure saepe deleniti. Dolore et voluptates ut quo et.'),
(68, 23, 2, 'Perspiciatis perspiciatis ullam et quo. Ex in magnam maxime quasi consequuntur et. Corrupti facere quod sunt iure rem. Dolorem et voluptates animi ratione quis.'),
(69, 23, 1, 'Soluta ut atque aut quidem pariatur repellat. Occaecati optio nihil dicta quisquam molestiae aut. In fuga suscipit iure labore quas.'),
(70, 24, 1, 'Corrupti maiores itaque quia et. Culpa nihil reprehenderit dolor unde vitae voluptatum iusto cupiditate. Officia aut aut totam est quia.'),
(71, 24, 1, 'Perferendis enim voluptatem minima hic qui facere. Commodi quos voluptatibus optio ad. Commodi officia vitae cupiditate a labore sed quia voluptatibus.'),
(72, 24, 1, 'Laudantium consequatur soluta ducimus qui porro rerum. Ratione nisi reiciendis quam nihil voluptatum corrupti consequatur. Sequi iure exercitationem cum et enim nemo architecto dignissimos.'),
(73, 25, 3, 'Impedit reiciendis sit incidunt nihil eum aut. Eius eos omnis et sit. Laudantium ea sint omnis nostrum consequatur doloribus.'),
(74, 25, 2, 'Laborum voluptatem officiis ullam quod necessitatibus. Aut et voluptatem dolorem voluptatum. Odio est ea assumenda laborum consequatur.'),
(75, 25, 1, 'Velit maiores delectus quo molestias necessitatibus ad doloribus sapiente. Blanditiis quia est omnis fuga perspiciatis at non. Alias ut similique aut quia.'),
(76, 26, 1, 'Est aperiam nostrum eos magni dolor aliquid id velit. Ratione molestiae fugiat magni ratione deleniti. Et et pariatur adipisci et placeat velit numquam. Adipisci impedit et aut totam sed.'),
(77, 26, 3, 'Ut sunt sunt sequi velit et. Iure sit incidunt vel modi consequatur. Voluptatem aut illum vel non sint repudiandae dolore aut.'),
(78, 26, 2, 'Qui odio sint neque ut voluptates voluptatem aspernatur. Deleniti vitae dolores voluptate. Sequi velit provident quos rerum neque in explicabo.'),
(79, 27, 2, 'Natus explicabo nam sint. Necessitatibus exercitationem earum sequi esse itaque aut modi. Et nihil et beatae sunt non amet est.'),
(80, 27, 1, 'Rerum non dolores neque a consequatur. Modi aut quia suscipit accusantium. Sunt et consequatur recusandae inventore.'),
(81, 27, 1, 'Cupiditate quia ipsam deleniti nihil deleniti ipsum facilis quia. Est ea mollitia veritatis sint voluptatem et impedit aut. Sunt sit nobis possimus modi enim.'),
(82, 28, 1, 'Quia quo eligendi eaque atque molestias quia. Quibusdam dolorum omnis nemo et ea et. Dolor et sit eaque quam. Iusto tempora tempore aut qui.'),
(83, 28, 3, 'Iusto sapiente necessitatibus accusantium velit omnis est architecto qui. Impedit at atque est corporis et.'),
(84, 28, 3, 'Libero sunt repellat harum architecto dolores. Possimus qui sit est. Iste quos nam commodi natus accusamus. Minima accusamus eligendi omnis eos quos quas quaerat.'),
(85, 29, 2, 'Eos aut ea dolores ducimus doloremque. A cupiditate non ipsa temporibus voluptas omnis libero est. Velit quae sunt ipsa. Et assumenda ut et adipisci ex consequatur.'),
(86, 29, 1, 'Dolore sint eligendi ullam commodi. Voluptatibus deserunt libero repellat sint consectetur hic natus. Placeat in voluptatem illo totam similique. Qui et cumque nobis possimus.'),
(87, 29, 2, 'Consequatur omnis asperiores ab a. Et nemo dolores exercitationem ducimus. Et enim ducimus illo voluptatem placeat iste commodi quas.'),
(88, 30, 3, 'Aliquid reiciendis sunt suscipit omnis omnis. Odio id deleniti eos facilis voluptatum soluta quasi. Et nisi molestias dolor sit dolorem consequuntur illum.'),
(89, 30, 2, 'Nihil eligendi qui sit labore. Dolore consectetur facere natus quaerat voluptates deleniti aut. Illum repellendus eum optio rerum.'),
(90, 30, 1, 'Eligendi quia perferendis deserunt iusto. A non sequi voluptatem harum eveniet.\nTenetur eligendi nihil alias dolores. Numquam qui molestias aliquam nostrum.'),
(91, 31, 3, 'Sunt ut quisquam aut. Sunt molestiae ut est labore eveniet id delectus. Maxime et vitae sit ratione adipisci laudantium.'),
(92, 31, 1, 'Voluptatum mollitia omnis magni iste veritatis sit fugiat nam. Eum vitae expedita eum harum. Minus recusandae est commodi. Ut quis voluptatem et occaecati at corporis temporibus.'),
(93, 31, 1, 'Sunt sed tenetur perferendis nihil. A ipsa eos quas nesciunt est. Rerum ab modi eaque assumenda laboriosam.'),
(94, 32, 1, 'Praesentium et id dolore iste quis. Consequuntur est ratione eos.\nId nihil cupiditate a. Eos eveniet dolores commodi nisi aut fuga tenetur in. Non voluptate quia voluptas voluptatem eum.'),
(95, 32, 3, 'Aliquid impedit ut eos assumenda qui beatae minus. Ea repellat asperiores qui ut facere. Reiciendis sequi repellat delectus culpa velit et vero.'),
(96, 32, 1, 'In illo ea repudiandae et ut officiis. Nam necessitatibus est officiis sequi officia laborum enim. Saepe deleniti possimus temporibus et ad quia.'),
(97, 33, 2, 'Quis aut nam dolorum facere est beatae itaque ut. Iure consectetur iure cumque voluptas omnis est. Repudiandae consequatur nihil non quae non. Eos ut pariatur dignissimos est cupiditate.'),
(98, 33, 3, 'Reprehenderit et et et aut cum. Ut dolorem distinctio eos vel mollitia. Officia aut quidem nobis fugit corrupti et voluptatem sequi. Minima in repellat nesciunt qui aut.'),
(99, 33, 3, 'Et vel delectus et nemo. Hic rerum est sit dolor nemo eius ipsam et. Nemo ut modi error autem. Cupiditate non aut et molestiae.'),
(100, 34, 3, 'Officia nisi eum maiores accusamus. Et voluptas aperiam omnis. Ex enim laudantium tempore excepturi.'),
(101, 34, 3, 'Eveniet nihil quos sed ratione eum ut in ex. Nulla ut earum dolor aliquid sed. Et reprehenderit voluptatum et sed et rem et voluptatem.'),
(102, 34, 1, 'Ipsa itaque facilis voluptates. Sed delectus dolore qui aut excepturi recusandae. Laboriosam totam officiis deleniti expedita harum. Sit illo id ipsum nesciunt tempora.'),
(103, 35, 3, 'Voluptatibus eaque qui ea ut sed veritatis quo nemo. Id ab officia aspernatur quis. Nam facere corporis molestias qui rerum illum excepturi. Natus voluptatum qui aliquid atque.'),
(104, 35, 3, 'Eius impedit laudantium blanditiis ea. Quibusdam ad velit quas quae. Consectetur aut perspiciatis et sint et commodi.'),
(105, 35, 3, 'Eum voluptatibus et sed architecto ullam dolorem tempore. Ab sit dolore molestias soluta. Ea voluptate quaerat qui mollitia quia quis.'),
(106, 36, 1, 'Amet ut ratione blanditiis nihil. Dolorum est eos magni eligendi amet. Voluptas omnis velit voluptatem sint nemo quibusdam et quia.'),
(107, 36, 1, 'Reprehenderit voluptas id veniam cum asperiores. Nisi et unde deleniti laborum ut. Labore repellendus voluptatem dolore molestias. Quia aliquid sed soluta delectus accusamus dolore error magnam.'),
(108, 36, 3, 'Assumenda facere voluptatem quisquam tempore sint. Ducimus expedita quia dolor a. Iusto totam dolorem totam explicabo non modi.'),
(109, 1, 2, 'Debitis et sint voluptate placeat provident illum. Molestias excepturi eligendi ipsum deleniti quas. Ex et voluptas quia voluptatum magni ipsa.'),
(110, 1, 3, 'Quo vel corrupti explicabo molestiae eum et at. Rem eos sint repellendus pariatur velit. Laborum qui velit aut repellendus dolores. Blanditiis sapiente asperiores explicabo sed nihil facere.'),
(111, 1, 3, 'At itaque eaque placeat fuga. Vel quaerat unde repudiandae cumque odit inventore molestias et. Velit rem et voluptatem inventore officiis modi facilis. Omnis neque fugiat sed.');

-- --------------------------------------------------------

--
-- Структура таблицы `allergies_list`
--

CREATE TABLE `allergies_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `allergies_list`
--

INSERT INTO `allergies_list` (`id`, `name`) VALUES
(1, 'Allergy 1'),
(2, 'Allergy 2'),
(3, 'Allergy 3'),
(4, 'Allergy 4'),
(5, 'test'),
(6, '24242424'),
(7, 'tester');

-- --------------------------------------------------------

--
-- Структура таблицы `antibiotics`
--

CREATE TABLE `antibiotics` (
  `id` int(11) NOT NULL,
  `opat_id` int(11) NOT NULL,
  `antibiotic_id` int(11) NOT NULL,
  `dose` varchar(50) NOT NULL,
  `start_date` int(11) NOT NULL,
  `stop_date` int(11) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `frequency` varchar(30) NOT NULL,
  `need_change` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `antibiotics`
--

INSERT INTO `antibiotics` (`id`, `opat_id`, `antibiotic_id`, `dose`, `start_date`, `stop_date`, `duration`, `frequency`, `need_change`) VALUES
(4, 2, 2, 'fugit', 1330128000, 390268800, 'omnis', 'odit', 1),
(5, 2, 1, 'aliquam', 799632000, 1056153600, 'molestiae', 'quo', 0),
(6, 2, 3, 'incidunt', 764640000, 442972800, 'id', 'laboriosam', 1),
(7, 3, 1, 'soluta', 54777600, 292636800, 'rem', 'ipsum', 1),
(8, 3, 2, 'voluptas', 688348800, 307324800, 'earum', 'neque', 1),
(9, 3, 1, 'et', 231292800, 1021161600, 'ea', 'aut', 1),
(10, 4, 2, 'et', 245203200, 1027382400, 'dolor', 'dolor', 0),
(11, 4, 3, 'sit', 926553600, 683337600, 'cumque', 'ullam', 0),
(12, 4, 3, 'enim', 476582400, 1269216000, 'repellendus', 'fugit', 1),
(13, 5, 1, 'qui', 453513600, 833673600, 'explicabo', 'sunt', 0),
(14, 5, 1, 'possimus', 516153600, 449366400, 'omnis', 'et', 0),
(15, 5, 2, 'accusantium', 702345600, 647568000, 'facere', 'amet', 1),
(16, 6, 1, 'at', 1231977600, 1085184000, 'nobis', 'dolore', 0),
(17, 6, 3, 'vitae', 900547200, 165801600, 'ipsa', 'inventore', 1),
(18, 6, 3, 'et', 695433600, 1157846400, 'repellat', 'eum', 1),
(19, 7, 3, 'id', 411523200, 1014940800, 'placeat', 'a', 0),
(20, 7, 2, 'quibusdam', 1343606400, 415584000, 'quia', 'aperiam', 1),
(21, 7, 2, 'vel', 14515200, 817862400, 'aperiam', 'iusto', 1),
(22, 8, 2, 'doloribus', 957744000, 463017600, 'nostrum', 'eum', 0),
(23, 8, 2, 'delectus', 325987200, 1445731200, 'similique', 'nemo', 1),
(24, 8, 3, 'omnis', 395107200, 45619200, 'ut', 'et', 0),
(25, 9, 1, 'inventore', 1342483200, 565833600, 'sit', 'repellendus', 1),
(26, 9, 2, 'est', 235094400, 1322956800, 'et', 'qui', 0),
(27, 9, 2, 'consequatur', 2332800, 1239753600, 'dolor', 'dicta', 1),
(28, 10, 2, 'id', 677635200, 92880000, 'nihil', 'ex', 1),
(29, 10, 1, 'eum', 1187222400, 113270400, 'rem', 'cum', 0),
(30, 10, 3, 'illum', 1357257600, 599788800, 'voluptas', 'ratione', 1),
(31, 11, 3, 'praesentium', 360633600, 1437264000, 'temporibus', 'provident', 1),
(32, 11, 2, 'dolor', 433382400, 448416000, 'et', 'aut', 1),
(33, 11, 3, 'neque', 1195776000, 215222400, 'deleniti', 'reprehenderit', 1),
(34, 12, 3, 'sint', 164160000, 1277424000, 'aliquam', 'dolores', 0),
(35, 12, 2, 'dolor', 1052784000, 49593600, 'harum', 'fugiat', 0),
(36, 12, 3, 'sit', 720921600, 1257897600, 'voluptas', 'natus', 1),
(37, 13, 1, 'at', 22464000, 1002758400, 'ipsum', 'soluta', 1),
(38, 13, 3, 'porro', 531187200, 1173744000, 'animi', 'corporis', 0),
(39, 13, 1, 'magni', 670291200, 456019200, 'sapiente', 'nulla', 0),
(40, 14, 1, 'ut', 829699200, 399340800, 'facere', 'sit', 0),
(41, 14, 1, 'iste', 907113600, 189993600, 'quis', 'ipsum', 1),
(42, 14, 2, 'recusandae', 773625600, 1366156800, 'nulla', 'adipisci', 0),
(43, 15, 2, 'laudantium', 200361600, 127872000, 'eos', 'doloremque', 1),
(44, 15, 2, 'voluptatem', 279676800, 1055980800, 'delectus', 'aut', 1),
(45, 15, 2, 'sed', 648604800, 745545600, 'quisquam', 'asperiores', 0),
(46, 16, 2, 'ipsa', 191376000, 371088000, 'autem', 'autem', 1),
(47, 16, 1, 'sunt', 155088000, 38620800, 'quibusdam', 'deleniti', 1),
(48, 16, 2, 'a', 25056000, 487123200, 'nobis', 'perferendis', 0),
(49, 17, 2, 'veritatis', 359769600, 1295481600, 'numquam', 'numquam', 0),
(50, 17, 3, 'vel', 187574400, 1362009600, 'et', 'dolor', 1),
(51, 17, 1, 'eos', 1132790400, 219283200, 'sapiente', 'quia', 0),
(52, 18, 3, 'optio', 577238400, 743990400, 'earum', 'cumque', 0),
(53, 18, 2, 'est', 1212796800, 659664000, 'laboriosam', 'voluptate', 0),
(54, 18, 3, 'cum', 1184803200, 827539200, 'enim', 'autem', 0),
(55, 19, 2, 'dolor', 52704000, 931996800, 'qui', 'in', 0),
(56, 19, 1, 'repudiandae', 513993600, 1169078400, 'delectus', 'quis', 0),
(57, 19, 2, 'voluptatem', 607132800, 683856000, 'quo', 'deserunt', 1),
(58, 20, 2, 'debitis', 371520000, 942883200, 'assumenda', 'sint', 0),
(59, 20, 1, 'iste', 10800000, 907286400, 'modi', 'vitae', 0),
(60, 20, 2, 'aut', 182736000, 1245628800, 'a', 'inventore', 1),
(61, 21, 2, 'molestiae', 1234310400, 475372800, 'eligendi', 'amet', 0),
(62, 21, 3, 'minus', 719107200, 1253059200, 'itaque', 'necessitatibus', 0),
(63, 21, 1, 'itaque', 420768000, 1325203200, 'asperiores', 'velit', 1),
(64, 22, 2, 'quaerat', 126489600, 84844800, 'sunt', 'quis', 0),
(65, 22, 3, 'perferendis', 1305158400, 782352000, 'vitae', 'sequi', 1),
(66, 22, 1, 'officia', 1001289600, 123552000, 'distinctio', 'modi', 0),
(67, 23, 2, 'vel', 1035072000, 1052697600, 'voluptatem', 'fugiat', 1),
(68, 23, 2, 'labore', 689904000, 1141430400, 'et', 'cumque', 0),
(69, 23, 2, 'dignissimos', 660009600, 489456000, 'explicabo', 'laborum', 1),
(70, 24, 1, 'sequi', 602985600, 1100563200, 'cum', 'rem', 0),
(71, 24, 2, 'consectetur', 446256000, 319852800, 'quo', 'natus', 0),
(72, 24, 3, 'facere', 1068940800, 1170460800, 'mollitia', 'quae', 1),
(73, 25, 2, 'repellat', 1119571200, 511056000, 'vel', 'culpa', 1),
(74, 25, 1, 'qui', 1044576000, 506563200, 'quo', 'sequi', 0),
(75, 25, 1, 'dolor', 1031961600, 904262400, 'qui', 'quasi', 1),
(76, 26, 3, 'id', 1345507200, 613094400, 'explicabo', 'quidem', 0),
(77, 26, 2, 'ea', 920160000, 731808000, 'minima', 'qui', 0),
(78, 26, 3, 'tempora', 518745600, 890179200, 'odit', 'modi', 0),
(79, 27, 3, 'corrupti', 938044800, 420163200, 'dolores', 'et', 1),
(80, 27, 3, 'quo', 1228262400, 487382400, 'earum', 'repudiandae', 0),
(81, 27, 1, 'voluptates', 208224000, 839980800, 'omnis', 'non', 1),
(82, 28, 2, 'placeat', 1300579200, 218764800, 'dolorem', 'et', 1),
(83, 28, 3, 'quasi', 84153600, 87782400, 'magni', 'harum', 1),
(84, 28, 3, 'vel', 378259200, 1038873600, 'voluptatem', 'repellendus', 0),
(85, 29, 1, 'deserunt', 1370822400, 466646400, 'nesciunt', 'sint', 1),
(86, 29, 2, 'nihil', 263865600, 120268800, 'molestias', 'minima', 1),
(87, 29, 2, 'nesciunt', 32313600, 1227484800, 'facere', 'quibusdam', 0),
(88, 30, 2, 'iste', 1322006400, 1236384000, 'sint', 'natus', 1),
(89, 30, 1, 'rerum', 871689600, 1047772800, 'eum', 'dolor', 0),
(90, 30, 3, 'saepe', 1019952000, 121478400, 'molestiae', 'voluptates', 0),
(91, 31, 1, 'ipsa', 393984000, 867110400, 'quia', 'totam', 0),
(92, 31, 1, 'autem', 1431043200, 675388800, 'veritatis', 'vero', 0),
(93, 31, 2, 'occaecati', 430272000, 912729600, 'maiores', 'voluptas', 0),
(94, 32, 2, 'qui', 599184000, 707011200, 'assumenda', 'libero', 1),
(95, 32, 3, 'quia', 720489600, 657331200, 'est', 'ullam', 0),
(96, 32, 2, 'pariatur', 891648000, 261360000, 'enim', 'ut', 1),
(97, 33, 1, 'qui', 1320624000, 138153600, 'numquam', 'et', 0),
(98, 33, 2, 'commodi', 213494400, 817257600, 'officia', 'id', 0),
(99, 33, 2, 'nihil', 1265932800, 735091200, 'nihil', 'sint', 0),
(100, 34, 3, 'eveniet', 31449600, 868665600, 'dolores', 'aut', 0),
(101, 34, 2, 'distinctio', 472348800, 685929600, 'modi', 'exercitationem', 0),
(102, 34, 2, 'nihil', 713836800, 219542400, 'ut', 'nulla', 1),
(103, 35, 3, 'ipsam', 523584000, 511574400, 'deserunt', 'ut', 1),
(104, 35, 1, 'iure', 923356800, 1138492800, 'optio', 'sit', 1),
(105, 35, 2, 'autem', 402537600, 706752000, 'consectetur', 'voluptas', 1),
(106, 36, 1, 'dolorem', 408758400, 1440028800, 'animi', 'fugiat', 1),
(107, 36, 1, 'sit', 188870400, 22204800, 'sit', 'quaerat', 0),
(108, 36, 2, 'sit', 60480000, 768096000, 'incidunt', 'dolorem', 0),
(109, 1, 0, 'ea', 471139200, 472435200, 'consequatur', 'officia', 0),
(110, 1, 0, 'occaecati', 1341360000, 291513600, 'esse', 'laborum', 0),
(111, 1, 0, 'autem', 1389225600, 759456000, 'molestiae', 'debitis', 0),
(112, 1, 0, '', 0, 1465257600, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `antibiotics_list`
--

CREATE TABLE `antibiotics_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1465167717),
('doctor', '10', 1465167717),
('doctor', '17', 1465167717),
('doctor', '18', 1465167717),
('doctor', '20', 1465167717),
('doctor', '21', 1465167717),
('doctor', '3', 1465167717),
('doctor', '4', 1465167717),
('doctor', '7', 1465167717),
('doctor', '8', 1465167717),
('master_doctor', '19', 1465167717),
('master_doctor', '2', 1465167717);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('administrator', 1, NULL, NULL, NULL, 1465167717, 1465167717),
('approveDoctors', 2, '', NULL, NULL, 1465167717, 1465167717),
('bloodCulturesInterface', 2, 'Blood cultures interface', NULL, NULL, 1465167717, 1465167717),
('changeListTables', 2, '', NULL, NULL, 1465167717, 1465167717),
('changePatientDoctor', 2, '', NULL, NULL, 1465167717, 1465167717),
('changePatientHospital', 2, '', NULL, NULL, 1465167717, 1465167717),
('doctor', 1, NULL, NULL, NULL, 1465167717, 1465167717),
('master_doctor', 1, NULL, NULL, NULL, 1465167717, 1465167717),
('microReferralInterface', 2, 'Micro Referral interface', NULL, NULL, 1465167717, 1465167717),
('notificationsInterface', 2, 'Notifications interface', NULL, NULL, 1465167717, 1465167717),
('opatInterface', 2, 'Opat interface', NULL, NULL, 1465167717, 1465167717),
('searchByHospitalName', 2, '', NULL, NULL, 1465167717, 1465167717);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('master_doctor', 'approveDoctors'),
('master_doctor', 'bloodCulturesInterface'),
('administrator', 'changeListTables'),
('master_doctor', 'changePatientDoctor'),
('administrator', 'changePatientHospital'),
('master_doctor', 'doctor'),
('administrator', 'master_doctor'),
('doctor', 'microReferralInterface'),
('doctor', 'notificationsInterface'),
('master_doctor', 'opatInterface'),
('administrator', 'searchByHospitalName');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bloods`
--

CREATE TABLE `bloods` (
  `id` int(11) NOT NULL,
  `micro_referral_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `wcc` varchar(20) NOT NULL,
  `n0` varchar(20) NOT NULL,
  `crp` varchar(20) NOT NULL,
  `egfr` varchar(20) NOT NULL,
  `others` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bloods`
--

INSERT INTO `bloods` (`id`, `micro_referral_id`, `date_created`, `wcc`, `n0`, `crp`, `egfr`, `others`) VALUES
(4, 2, 356313600, '2', '6', '6', '3', '3'),
(5, 2, 703209600, '2', '7', '9', '6', '9'),
(6, 2, 488246400, '2', '4', '9', '1', '1'),
(7, 3, 1062806400, '6', '2', '7', '4', '8'),
(8, 3, 99187200, '9', '5', '6', '8', '7'),
(9, 3, 1351555200, '8', '7', '2', '9', '2'),
(10, 4, 248227200, '6', '1', '6', '3', '6'),
(11, 4, 204768000, '8', '4', '2', '8', '7'),
(12, 4, 336528000, '1', '3', '8', '1', '6'),
(13, 5, 1206835200, '2', '4', '8', '9', '4'),
(14, 5, 702086400, '5', '6', '3', '7', '6'),
(15, 5, 52963200, '7', '6', '9', '1', '8'),
(16, 6, 436924800, '6', '4', '8', '4', '5'),
(17, 6, 1298419200, '6', '7', '2', '7', '3'),
(18, 6, 408412800, '8', '3', '3', '9', '4'),
(19, 7, 621129600, '5', '7', '1', '6', '3'),
(20, 7, 455414400, '6', '9', '3', '5', '2'),
(21, 7, 1208995200, '9', '9', '2', '7', '7'),
(22, 8, 1253318400, '4', '4', '5', '5', '3'),
(23, 8, 585792000, '6', '9', '5', '1', '1'),
(24, 8, 410313600, '8', '9', '5', '7', '4'),
(25, 9, 709862400, '7', '3', '1', '5', '4'),
(26, 9, 437443200, '2', '6', '6', '1', '9'),
(27, 9, 378259200, '2', '8', '1', '1', '1'),
(28, 10, 371606400, '3', '4', '1', '1', '6'),
(29, 10, 975110400, '4', '7', '1', '5', '9'),
(30, 10, 466041600, '3', '7', '4', '1', '7'),
(31, 11, 1250467200, '5', '8', '5', '4', '9'),
(32, 11, 1314144000, '1', '8', '6', '3', '9'),
(33, 11, 803606400, '9', '6', '6', '4', '1'),
(34, 12, 660787200, '5', '5', '4', '6', '6'),
(35, 12, 1310947200, '9', '7', '6', '6', '7'),
(36, 12, 585878400, '5', '2', '4', '7', '3'),
(37, 13, 1305763200, '6', '1', '3', '3', '5'),
(38, 13, 1270166400, '6', '7', '6', '9', '1'),
(39, 13, 36028800, '9', '3', '2', '8', '3'),
(40, 14, 1255651200, '5', '2', '1', '6', '2'),
(41, 14, 1248220800, '4', '6', '8', '5', '5'),
(42, 14, 1032220800, '1', '7', '7', '3', '9'),
(43, 15, 534816000, '9', '6', '8', '5', '9'),
(44, 15, 1426118400, '9', '8', '2', '8', '3'),
(45, 15, 352425600, '1', '1', '2', '2', '5'),
(46, 16, 18230400, '9', '6', '2', '5', '5'),
(47, 16, 846979200, '4', '1', '8', '6', '8'),
(48, 16, 1355097600, '8', '7', '6', '8', '4'),
(49, 17, 1312934400, '4', '7', '3', '3', '1'),
(50, 17, 356400000, '8', '5', '7', '3', '8'),
(51, 17, 627523200, '2', '8', '3', '7', '5'),
(52, 18, 587433600, '7', '9', '3', '7', '1'),
(53, 18, 1317254400, '5', '2', '5', '2', '3'),
(54, 18, 153446400, '2', '2', '6', '1', '8'),
(55, 19, 123120000, '7', '4', '9', '2', '7'),
(56, 19, 58924800, '5', '9', '8', '2', '2'),
(57, 19, 353548800, '3', '4', '7', '4', '1'),
(58, 20, 466905600, '9', '7', '1', '2', '2'),
(59, 20, 433728000, '6', '1', '8', '9', '7'),
(60, 20, 894585600, '8', '7', '9', '6', '7'),
(61, 21, 787190400, '8', '3', '6', '6', '2'),
(62, 21, 20736000, '7', '1', '3', '2', '5'),
(63, 21, 1077408000, '1', '8', '3', '9', '6'),
(64, 22, 54259200, '2', '4', '1', '6', '1'),
(65, 22, 406166400, '1', '1', '5', '7', '5'),
(66, 22, 270000000, '9', '3', '4', '6', '7'),
(67, 23, 7516800, '9', '8', '7', '3', '6'),
(68, 23, 52185600, '5', '5', '5', '8', '8'),
(69, 23, 257904000, '7', '2', '2', '8', '9'),
(70, 24, 171331200, '5', '1', '8', '8', '6'),
(71, 24, 1234224000, '1', '4', '2', '2', '7'),
(72, 24, 206928000, '5', '8', '6', '6', '8'),
(73, 25, 872812800, '7', '3', '4', '6', '2'),
(74, 25, 417139200, '9', '9', '4', '7', '2'),
(75, 25, 507427200, '3', '4', '7', '6', '1'),
(76, 26, 855446400, '2', '4', '8', '1', '2'),
(77, 26, 1234656000, '7', '3', '4', '6', '6'),
(78, 26, 996278400, '5', '8', '7', '2', '9'),
(79, 27, 1219104000, '2', '1', '7', '2', '6'),
(80, 27, 951523200, '6', '3', '9', '3', '5'),
(81, 27, 616032000, '3', '9', '5', '8', '5'),
(82, 28, 632188800, '5', '6', '7', '3', '8'),
(83, 28, 1151020800, '8', '3', '6', '4', '5'),
(84, 28, 311126400, '8', '5', '4', '2', '6'),
(85, 29, 999129600, '8', '6', '6', '4', '8'),
(86, 29, 829958400, '7', '6', '9', '4', '8'),
(87, 29, 419212800, '8', '3', '4', '3', '2'),
(88, 30, 773798400, '6', '3', '7', '2', '7'),
(89, 30, 658195200, '1', '6', '3', '2', '8'),
(90, 30, 1017619200, '5', '5', '9', '7', '8'),
(91, 31, 862099200, '7', '8', '6', '6', '7'),
(92, 31, 88732800, '4', '4', '2', '3', '3'),
(93, 31, 408326400, '7', '7', '3', '1', '3'),
(94, 32, 404092800, '8', '5', '5', '8', '6'),
(95, 32, 310435200, '6', '1', '9', '1', '3'),
(96, 32, 1265241600, '2', '9', '9', '3', '8'),
(97, 33, 601776000, '7', '5', '5', '9', '4'),
(98, 33, 942624000, '7', '4', '9', '1', '9'),
(99, 33, 1265155200, '9', '7', '3', '4', '9'),
(100, 34, 337910400, '7', '8', '7', '6', '6'),
(101, 34, 926553600, '9', '3', '4', '8', '5'),
(102, 34, 223516800, '2', '9', '7', '8', '1'),
(103, 35, 1198281600, '7', '5', '5', '8', '3'),
(104, 35, 374198400, '3', '8', '9', '5', '5'),
(105, 35, 148089600, '7', '9', '7', '3', '3'),
(106, 36, 112665600, '8', '9', '4', '9', '7'),
(107, 36, 1163980800, '6', '6', '7', '1', '3'),
(108, 36, 1011916800, '2', '1', '9', '1', '4'),
(109, 1, 303609600, '1', '7', '5', '9', '7'),
(110, 1, 1026086400, '7', '3', '7', '1', '1'),
(111, 1, 506390400, '3', '8', '5', '2', '6');

-- --------------------------------------------------------

--
-- Структура таблицы `blood_cultures`
--

CREATE TABLE `blood_cultures` (
  `id` int(11) NOT NULL,
  `blood_culture_main_id` int(11) NOT NULL,
  `lab_no` varchar(30) NOT NULL,
  `date_sample` int(11) NOT NULL,
  `sensitivity_complete` int(1) NOT NULL,
  `significant_id` int(11) NOT NULL,
  `follow_up_required` text NOT NULL,
  `active_case` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blood_cultures`
--

INSERT INTO `blood_cultures` (`id`, `blood_culture_main_id`, `lab_no`, `date_sample`, `sensitivity_complete`, `significant_id`, `follow_up_required`, `active_case`) VALUES
(4, 2, '1038', 1465232293, 1, 3, 'Nulla consequatur commodi quaerat aut voluptate id quod. Blanditiis expedita distinctio voluptatibus minus aut. Eos molestiae reiciendis nobis est perferendis ut.', 1),
(5, 2, '1005', 1465232293, 1, 3, 'Qui accusantium consectetur eius sit et pariatur. Facere iste temporibus repellat rerum fuga rerum sint.', 0),
(6, 2, '1042', 1465232293, 0, 1, 'Est ut distinctio perspiciatis qui. Rerum magni aut in officia nemo ducimus odio voluptatum. Velit sequi rerum autem quia eum est.', 1),
(7, 3, '1004', 1465232293, 0, 1, 'Explicabo assumenda similique et impedit perferendis cupiditate qui. Et exercitationem non iusto non quia aut optio.', 1),
(8, 3, '1049', 1465232293, 1, 3, 'Eaque laudantium tenetur voluptate et ratione soluta adipisci. Et qui illum id placeat. Necessitatibus voluptas facilis reiciendis nesciunt harum eos. Et optio magni harum architecto sed ipsam alias.', 1),
(9, 3, '1011', 1465232293, 0, 3, 'Debitis veniam autem est. Voluptas quia quod nostrum nihil. Eligendi nesciunt possimus excepturi veniam voluptatum. Occaecati est repellat asperiores voluptatem.', 1),
(10, 4, '1008', 1465232293, 0, 2, 'Eum quis quis quisquam veritatis amet nemo. A est sit iure culpa laudantium error.', 1),
(11, 4, '1020', 1465232293, 1, 2, 'Dolor hic non voluptates sequi. Voluptatem hic voluptate necessitatibus occaecati dicta. Provident cumque nostrum iure expedita eos. Saepe officia ullam quas numquam dolores quaerat cum.', 1),
(12, 4, '1030', 1465232293, 0, 1, 'Debitis autem voluptatem libero magni harum. Laborum in non ut hic. Beatae omnis occaecati eum eligendi sint. Eum sed commodi at aliquam.', 1),
(13, 5, '1039', 1465232293, 1, 2, 'Voluptates culpa non quo ea. Explicabo qui dolor est repudiandae magni quia perspiciatis atque. Unde est qui molestias occaecati dolor impedit. Non voluptatem quo eveniet quam sed quod.', 0),
(14, 5, '1003', 1465232293, 1, 2, 'Asperiores illum quidem minus vel saepe. Aut molestiae sint veritatis consequatur. Consequatur aut maxime corporis quam nulla eaque impedit.', 0),
(15, 5, '1029', 1465232293, 1, 2, 'Earum esse perspiciatis perspiciatis totam non quos dicta beatae. Laborum et deserunt pariatur voluptatem cumque dolorum. Omnis adipisci et harum vel perspiciatis dolorum.', 1),
(16, 6, '1018', 1465232293, 0, 1, 'Laboriosam quis voluptatibus repellat non velit provident et. Placeat necessitatibus ut nisi maiores dolor quo dolorem. Sint exercitationem repellendus qui tempora voluptas. Ratione rem sed impedit.', 1),
(17, 6, '1027', 1465232293, 1, 2, 'Sapiente nihil architecto accusamus ut mollitia corporis. Non iure asperiores asperiores commodi.', 1),
(18, 6, '1031', 1465232293, 0, 1, 'Repellendus consequatur voluptas tempore optio et. Natus nesciunt sint quisquam expedita cum qui fuga.', 1),
(19, 7, '1046', 1465232293, 0, 1, 'Eum quae beatae saepe saepe. Et eum minima modi et. Temporibus et quia a.', 0),
(20, 7, '1011', 1465232293, 0, 2, 'Molestiae cupiditate consequuntur ut deleniti quis dignissimos. Consequatur sequi non expedita molestias nihil. Sit voluptas deleniti ducimus earum.', 0),
(21, 7, '1009', 1465232293, 1, 1, 'Nostrum qui placeat quae veniam ducimus corporis et. Esse expedita iure vel quia magni. Ea consequatur itaque cumque provident suscipit voluptate.', 1),
(22, 8, '1007', 1465232293, 0, 2, 'Voluptas molestiae nostrum ipsum aperiam possimus aspernatur illum. Sed libero sed voluptas accusamus cum aut. Ut dignissimos qui sed sit cum voluptas qui. Qui labore sint quidem.', 0),
(23, 8, '1050', 1465232293, 0, 2, 'Totam et dignissimos in debitis accusantium. Atque ea architecto eligendi quasi quod pariatur. Earum dolores distinctio qui.', 0),
(24, 8, '1001', 1465232293, 1, 2, 'Sit harum est et minus. Cumque voluptate nostrum accusantium et aut.', 1),
(25, 9, '1026', 1465232293, 0, 3, 'Quam quia praesentium rem voluptatibus alias cum aut. Sint at porro omnis quos. Adipisci vitae facere nisi similique ut qui.', 1),
(26, 9, '1024', 1465232293, 0, 3, 'Accusantium voluptatem sit ut dolore. Fugit dolor odio voluptates ipsam et voluptate. Perspiciatis sit voluptates inventore.', 0),
(27, 9, '1008', 1465232293, 0, 1, 'Aut aut deserunt et blanditiis iusto quo. Omnis atque molestiae voluptate recusandae quos. Ab ipsum incidunt omnis doloribus rerum cumque. Vel id odio debitis dolore rerum magni ipsam.', 0),
(28, 10, '1040', 1465232293, 0, 3, 'Omnis esse blanditiis eligendi cupiditate minus eum. Aliquam aut sint similique nisi. Vel reprehenderit eaque ea dolores. Voluptate non quibusdam reprehenderit possimus ab nostrum deleniti.', 1),
(29, 10, '1031', 1465232293, 0, 3, 'Expedita temporibus quia voluptatem cupiditate consequatur exercitationem rerum non. Quo mollitia nemo sunt voluptatem explicabo totam molestias.', 0),
(30, 10, '1004', 1465232293, 1, 2, 'Saepe quia aut reiciendis labore. Animi vero quos eum. Aliquam nemo maxime incidunt sit id quisquam nihil. Nihil facilis temporibus odit est soluta ut.', 0),
(31, 11, '1048', 1465232293, 0, 1, 'Nisi dignissimos magnam consequatur sed cumque dolor sequi. Et quo tempore repellendus sequi est unde labore. Dolor voluptatem sed libero assumenda ut ea.', 1),
(32, 11, '1011', 1465232293, 0, 3, 'Reprehenderit iste quia ab autem eligendi sed repellat. Sequi est sed quisquam consequatur. Repellat accusantium et adipisci ipsam odit maxime. Quo est qui libero quam et qui necessitatibus.', 0),
(33, 11, '1020', 1465232293, 1, 1, 'Omnis aut a exercitationem non tempora adipisci. Libero reprehenderit consequatur magnam aut impedit. Optio est veritatis commodi ipsa sed temporibus.', 1),
(34, 12, '1009', 1465232293, 0, 3, 'Ea et rerum magnam sapiente ab. Consectetur culpa voluptatem quisquam harum officia. Qui magni numquam enim rerum cum dolor maiores. Consequatur odit magni at voluptates ea et nihil.', 1),
(35, 12, '1025', 1465232293, 0, 3, 'Sequi iure qui impedit magnam quis aspernatur. Voluptates est earum incidunt culpa et est ab. Rem quia velit officia explicabo.', 1),
(36, 12, '1047', 1465232293, 1, 3, 'Est explicabo sequi et. Incidunt laborum id temporibus ullam. Dolor placeat iure qui distinctio repellat.', 0),
(37, 13, '1013', 1465232293, 0, 2, 'Nihil quia explicabo ullam et est. Amet expedita rerum voluptatem quis facere non voluptate.', 1),
(38, 13, '1039', 1465232293, 1, 1, 'Nostrum qui ipsa provident autem illum repellendus. Molestiae aut recusandae quod nobis. Est facilis suscipit distinctio sit. Et voluptas eos magni quis ut nihil.', 1),
(39, 13, '1045', 1465232293, 0, 1, 'Ipsa magni eos numquam quia. Tempora et at sunt. Soluta minus ducimus quod quo eum assumenda. Distinctio magni quis est ut dolorem.', 1),
(40, 14, '1042', 1465232293, 1, 3, 'Id quaerat rem et corporis impedit quos. Provident culpa voluptas accusantium quidem. Id quas vitae error optio.', 0),
(41, 14, '1045', 1465232293, 1, 2, 'Cum porro dolorum consequatur voluptatem placeat. Neque ut ut nostrum quos delectus deleniti perspiciatis quaerat. Ut quisquam laboriosam nobis veritatis et rerum. Animi ipsa quo repellat.', 0),
(42, 14, '1000', 1465232293, 1, 3, 'Error rem sit magnam ut quaerat et veritatis voluptatum. Veritatis laborum qui ab quos accusamus. Id minima laborum non blanditiis voluptatem sed.', 1),
(43, 15, '1013', 1465232293, 1, 3, 'Provident quia sed culpa et voluptatem est animi. Et alias sit unde consectetur error cumque. Voluptatem qui adipisci consequatur quidem est ut. Inventore rerum error illo consequatur rem voluptate.', 0),
(44, 15, '1031', 1465232293, 0, 2, 'Ipsam nostrum adipisci error corrupti quam tempore. Dolores veritatis nostrum exercitationem totam labore magnam. Ut commodi qui sint tenetur necessitatibus. Minus qui molestiae facere sed dolor et.', 0),
(45, 15, '1032', 1465232293, 0, 1, 'Ut sint beatae molestias ut molestiae vitae autem. Pariatur earum est qui et vitae. Omnis sit vero vero at quae aliquid.', 0),
(46, 16, '1048', 1465232293, 1, 3, 'Atque debitis earum in laudantium. Consectetur eos nam itaque consectetur quas facilis.', 0),
(47, 16, '1036', 1465232293, 1, 3, 'Delectus voluptatum debitis sed mollitia saepe soluta. Doloribus veniam et odit officiis deserunt dignissimos cupiditate.', 1),
(48, 16, '1040', 1465232293, 1, 1, 'Voluptates consequatur voluptates beatae. A neque quisquam natus occaecati exercitationem natus. Odit ratione autem suscipit unde. Qui mollitia et nulla similique rerum.', 0),
(49, 17, '1029', 1465232293, 1, 1, 'Ut corporis sint fugit qui sit sit qui. Voluptas quos quam ullam est exercitationem fuga. In velit eligendi sit ex est.', 1),
(50, 17, '1008', 1465232293, 1, 1, 'Vel magnam provident ex quia ex aliquid. Ab aut omnis ut eaque excepturi eum rem. Qui excepturi voluptate placeat consectetur eos incidunt qui.', 0),
(51, 17, '1032', 1465232293, 0, 3, 'Voluptatem at sed odit eos. Nostrum nemo voluptatibus quisquam aut architecto error quia. Quis qui accusamus et est.', 0),
(52, 18, '1041', 1465232293, 0, 1, 'Ex aut tempore autem esse. Magni numquam qui culpa reprehenderit sapiente. Autem eaque sed iste dolor.', 1),
(53, 18, '1024', 1465232293, 0, 2, 'Et aut deleniti sit exercitationem. Nam ut corrupti maxime. Occaecati sunt sed officia nobis.', 1),
(54, 18, '1043', 1465232293, 0, 2, 'Doloremque quaerat reprehenderit facere illum. Est numquam cumque exercitationem soluta vero. Exercitationem id ut dolor qui occaecati. Consequatur sit aspernatur et autem error itaque.', 1),
(55, 19, '1018', 1465232293, 1, 3, 'Nisi nihil non magnam incidunt placeat minima. Occaecati culpa quia molestiae nulla tempora. Quasi totam a ratione ab.', 1),
(56, 19, '1044', 1465232293, 0, 2, 'Sit earum vero vel nemo. Ullam officiis et eaque. Autem qui officia repellat ea id beatae voluptatum.', 1),
(57, 19, '1038', 1465232293, 0, 1, 'Ex reiciendis dolores velit commodi eligendi id saepe. Soluta et blanditiis reiciendis nobis odio. Corrupti eius minima accusantium eum delectus ut. Repellendus libero aut non iure quia alias aut.', 0),
(58, 20, '1000', 1465232293, 1, 3, 'Vitae libero ut laudantium rerum. Est fugit quia repellendus eos. Repellendus dolore laborum quo iusto sed eaque sit. Quam labore recusandae voluptate laborum possimus consequatur enim quam.', 0),
(59, 20, '1027', 1465232293, 0, 2, 'Eum porro nostrum repudiandae mollitia magnam. Perspiciatis maiores magnam cum velit est. Commodi eum non deserunt omnis voluptates hic doloribus. Delectus commodi temporibus illum consequatur.', 1),
(60, 20, '1049', 1465232293, 1, 2, 'Quasi consectetur fugit in nulla voluptatum velit est. Quasi ipsam dolor aliquam at dolorem. Nemo labore dignissimos ex rem consequatur minus neque. Vel nemo non eveniet est non vel aliquid.', 1),
(61, 21, '1003', 1465232293, 0, 1, 'Optio ut ipsum ex ducimus pariatur qui. Doloremque molestiae qui et aspernatur quibusdam dignissimos modi. Similique sint quo aut sapiente culpa quis facere. Consequatur accusantium voluptas ut.', 1),
(62, 21, '1032', 1465232293, 0, 2, 'Occaecati eaque facilis quos quos quaerat debitis amet. Omnis debitis expedita et alias. Ea quia officiis et. Saepe cupiditate nemo nemo.', 0),
(63, 21, '1045', 1465232293, 1, 3, 'Placeat qui aut fuga sequi debitis. Nemo quae molestiae eos placeat qui. Minus dolores non accusantium quia atque dolorum esse iure.', 1),
(64, 22, '1011', 1465232293, 0, 1, 'Ut a suscipit quod enim dolor. Nam ab amet consequatur voluptate rerum porro. Perspiciatis eum qui dolorum rerum a ipsum. Unde qui unde explicabo unde.', 1),
(65, 22, '1044', 1465232293, 0, 2, 'Beatae voluptatibus ut dicta autem aliquam rerum recusandae. Earum unde aperiam aliquam cupiditate. Autem sequi quo ex occaecati velit et sunt esse. Illo dolor ipsa distinctio aliquid.', 1),
(66, 22, '1009', 1465232293, 1, 2, 'Sapiente deleniti alias enim molestias voluptas necessitatibus illum. Facilis aperiam sit est. Quia totam nemo quo aut velit velit. Nesciunt quae aliquid rerum voluptas voluptates iure saepe.', 1),
(67, 23, '1032', 1465232293, 0, 1, 'In omnis illum et cupiditate. Est numquam dolorem et vel odit quo. Labore recusandae vitae quidem quaerat aut velit. Non consectetur voluptates et voluptas temporibus.', 1),
(68, 23, '1048', 1465232293, 1, 3, 'Temporibus praesentium fugit et sit doloremque iste et. Vel blanditiis perspiciatis nihil. Facere non minima nemo non enim quibusdam quam. Voluptatibus reprehenderit laudantium rerum omnis.', 0),
(69, 23, '1049', 1465232293, 0, 1, 'Dicta iusto dolorem rerum placeat sint. Ea fugit aut ipsa amet. Possimus minus qui fuga minima consequuntur autem aliquid id.', 0),
(70, 24, '1014', 1465232293, 1, 1, 'Suscipit voluptatum ipsam voluptas itaque quibusdam et qui. Numquam unde et cupiditate et. Eum qui harum sint non.', 1),
(71, 24, '1049', 1465232293, 1, 3, 'Aliquid dolorum rerum velit tempore. Et non adipisci ipsam occaecati suscipit qui et esse. Nemo corporis aut saepe odio ut. Perferendis voluptatibus id modi officia doloremque id ut.', 1),
(72, 24, '1029', 1465232293, 0, 3, 'Molestiae sequi et voluptatibus. Fugiat corporis vero sit et. Sit non nihil sed ipsa hic minima eveniet. Adipisci temporibus molestiae voluptatem est eum et. Non ea officia ut reiciendis.', 1),
(73, 25, '1014', 1465232293, 1, 3, 'Ut dolores voluptatem velit autem non repellendus quia nesciunt. Sed praesentium molestias nemo doloribus voluptatem explicabo.', 0),
(74, 25, '1040', 1465232293, 1, 2, 'Id quos ducimus ab et sunt. Iusto voluptas odit sint officiis doloribus. Voluptatem ea adipisci maiores fuga.', 1),
(75, 25, '1024', 1465232293, 0, 2, 'Qui aperiam explicabo accusamus. Non sed recusandae a nostrum placeat hic qui et. Ut aut maiores neque debitis quos doloribus. Vero rerum molestias rem praesentium voluptas eaque et.', 1),
(76, 26, '1021', 1465232293, 0, 2, 'Harum voluptatem eius et similique eaque natus. Cumque distinctio officiis optio eaque qui reiciendis. Non aliquam esse et quia facere ea dignissimos.', 0),
(77, 26, '1039', 1465232293, 0, 1, 'Excepturi ut error aliquid provident doloribus voluptatum eveniet. Nam sit quia nostrum saepe natus quos et. In numquam quasi et quibusdam aut.', 1),
(78, 26, '1046', 1465232293, 0, 1, 'Nulla minima consequatur suscipit rerum. Ipsa saepe at vero. Adipisci et corporis laudantium consequuntur enim aut porro. Aut qui perferendis aut dolores quis voluptates officia quia.', 0),
(79, 27, '1026', 1465232293, 0, 3, 'Qui qui aut ut architecto. Vel quia iste officia provident dolores et et voluptate. Omnis architecto dolores illo est. Similique hic eos est dicta. Eos molestiae quia et cum neque.', 1),
(80, 27, '1029', 1465232293, 1, 3, 'Magni quo qui commodi vitae enim eos soluta qui. Neque non placeat repellendus inventore necessitatibus. Sunt accusamus cumque qui.', 0),
(81, 27, '1014', 1465232293, 0, 2, 'Suscipit corporis quia quae minima. Corporis magni facilis quis iste illum vel. Dolores possimus iure et provident amet quo non. Minima et voluptatem rem velit molestias.', 1),
(82, 28, '1005', 1465232293, 1, 2, 'Dolores et tenetur et quidem. Temporibus aliquid repellendus in quasi. Quos quia reiciendis dicta cum qui quae distinctio sed. Qui nemo est repellat sint consequatur voluptatem libero.', 1),
(83, 28, '1040', 1465232293, 1, 1, 'Quo ullam et corrupti reiciendis illum aut iusto. Maxime minus aliquid nulla amet iste. Aut et cum nostrum.', 1),
(84, 28, '1022', 1465232293, 0, 1, 'Voluptate eum asperiores temporibus suscipit occaecati maxime. Consequatur quasi rerum eius amet nemo nihil at excepturi. Autem ratione quam atque et odit voluptatem doloremque vero.', 1),
(85, 29, '1036', 1465232293, 1, 2, 'Et quia enim voluptatem aperiam. Occaecati laboriosam maiores mollitia. Et omnis ipsa eligendi numquam aut in et.', 1),
(86, 29, '1001', 1465232293, 0, 2, 'Enim neque cupiditate nobis ut voluptates. Non beatae recusandae hic magni molestiae. Exercitationem id excepturi omnis sunt dolor corporis.', 1),
(87, 29, '1009', 1465232293, 0, 3, 'Est est deleniti id architecto voluptatem quam sunt. Possimus cupiditate et enim consequatur voluptatem. Deserunt ut totam voluptatum sit quia et deleniti.', 0),
(88, 30, '1033', 1465232293, 0, 1, 'Sint quasi mollitia et voluptatibus commodi exercitationem voluptates nemo. Fugit quia praesentium dolorem in accusamus.', 1),
(89, 30, '1000', 1465232293, 0, 1, 'Delectus non nobis assumenda deserunt provident dolorum omnis. Sit ea eos reprehenderit et. Libero qui et voluptate amet cupiditate.', 1),
(90, 30, '1002', 1465232293, 1, 3, 'Voluptatem molestiae fuga ipsam vel corporis. Autem quis assumenda tempora non quo. Enim repellendus suscipit magni. Quaerat nostrum sapiente iusto ut deleniti perspiciatis.', 1),
(91, 31, '1042', 1465232293, 0, 1, 'In libero molestiae qui sapiente. Voluptatem rerum itaque voluptate est facilis. Nostrum voluptatibus molestiae delectus nihil sint.', 1),
(92, 31, '1002', 1465232293, 0, 3, 'Qui aliquid nemo cupiditate tenetur nemo enim est. Qui saepe ad occaecati qui neque accusantium culpa. Doloribus et et porro qui vero consequuntur in non.', 0),
(93, 31, '1006', 1465232293, 1, 3, 'Qui dicta sunt consequatur. Deserunt necessitatibus non dolores dignissimos. Et natus minus qui et voluptatem voluptatem quasi. Ut eum in iusto explicabo sequi.', 1),
(94, 32, '1011', 1465232293, 1, 3, 'Molestias perferendis et rerum alias libero non. Nemo numquam animi unde debitis. Magnam vel quia id aut enim perferendis.', 0),
(95, 32, '1025', 1465232293, 1, 1, 'Reprehenderit tenetur est animi odio omnis atque voluptatibus. Est nemo at natus amet eum blanditiis est. Aut et exercitationem ut et corporis sint.', 0),
(96, 32, '1048', 1465232293, 0, 2, 'Nisi nam tempora ab cupiditate asperiores aut. Voluptas enim autem minima nam molestiae sunt sint. Voluptate consequatur perspiciatis ea aut. Pariatur distinctio dolor ea corporis ab voluptatem rem.', 0),
(97, 33, '1025', 1465232293, 1, 2, 'Illo animi nam alias blanditiis ipsum. Vel officiis libero ad minima. Repellendus magni autem est. Fuga temporibus ullam et.', 0),
(98, 33, '1027', 1465232293, 1, 1, 'Ipsa error et at qui. Nihil magni ipsa voluptatem rerum sed fugiat. Ut quia aut non odit et dolore.', 0),
(99, 33, '1037', 1465232293, 0, 2, 'Quae qui excepturi veniam quae delectus. Iste placeat necessitatibus autem. Maxime iusto dolorum est omnis dolor quibusdam vero.', 0),
(100, 34, '1048', 1465232293, 0, 1, 'Amet rerum adipisci aperiam voluptatem eveniet. Maiores labore omnis qui rerum.', 1),
(101, 34, '1038', 1465232293, 1, 1, 'Tenetur qui quia ab iusto laudantium. Aut qui sit laboriosam pariatur. Sit et laborum autem nihil ea asperiores iste. Qui repellat natus earum repellat distinctio quia.', 0),
(102, 34, '1003', 1465232293, 0, 2, 'Sit magni autem voluptatem aliquam. Aut voluptatem consequuntur culpa sed nihil id omnis. Est architecto nostrum error nihil laudantium ut.', 1),
(103, 35, '1020', 1465232293, 0, 1, 'Rerum provident vel placeat. Pariatur voluptatem dolor qui in possimus. Possimus est tenetur explicabo sed.', 1),
(104, 35, '1030', 1465232293, 0, 3, 'Inventore amet beatae maiores et voluptatem. Neque enim quam suscipit. Harum similique et itaque minima voluptas sed non dolore. Sed eligendi aut dolore quia.', 0),
(105, 35, '1003', 1465232293, 0, 2, 'Et enim dolorem tempora. Qui aut modi libero unde reprehenderit delectus et. Eaque reiciendis placeat mollitia expedita error. Soluta voluptatibus atque non sunt corporis.', 1),
(106, 36, '1045', 1465232293, 1, 3, 'Amet omnis perspiciatis molestiae libero nobis. Voluptate voluptatem beatae voluptas aut aliquam. Inventore aut ut et corporis possimus et.', 0),
(107, 36, '1037', 1465232293, 1, 3, 'Occaecati voluptas dolorum provident necessitatibus id. Aliquid alias ipsa illo neque id vitae rem.', 1),
(108, 36, '1021', 1465232293, 0, 3, 'Eaque necessitatibus nobis dicta ut ratione consequatur. Rerum sapiente expedita ut et alias omnis. Dolores eius officiis fugit magni consequuntur.', 1),
(115, 1, '1046', 1465171200, 0, 0, '', 0),
(116, 1, '1006', 1465171200, 0, 0, '', 0),
(117, 1, '1020', 1465171200, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `blood_cultures_main`
--

CREATE TABLE `blood_cultures_main` (
  `id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blood_cultures_main`
--

INSERT INTO `blood_cultures_main` (`id`, `date_created`, `patient_id`) VALUES
(1, 1465171200, 1),
(2, 1465232292, 2),
(3, 1465232292, 3),
(4, 1465232293, 4),
(5, 1465232293, 5),
(6, 1465232293, 6),
(7, 1465232293, 7),
(8, 1465232293, 8),
(9, 1465232293, 9),
(10, 1465232293, 10),
(11, 1465232293, 11),
(12, 1465232293, 12),
(13, 1465232293, 13),
(14, 1465232293, 14),
(15, 1465232293, 15),
(16, 1465232293, 16),
(17, 1465232293, 17),
(18, 1465232293, 18),
(19, 1465232293, 19),
(20, 1465232293, 20),
(21, 1465232293, 21),
(22, 1465232293, 22),
(23, 1465232293, 23),
(24, 1465232293, 24),
(25, 1465232293, 25),
(26, 1465232293, 26),
(27, 1465232293, 27),
(28, 1465232293, 28),
(29, 1465232293, 29),
(30, 1465232293, 30),
(31, 1465232293, 31),
(32, 1465232293, 32),
(33, 1465232293, 33),
(34, 1465232293, 34),
(35, 1465232293, 35),
(36, 1465232293, 36);

-- --------------------------------------------------------

--
-- Структура таблицы `commisioning_boards_list`
--

CREATE TABLE `commisioning_boards_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `commisioning_boards_list`
--

INSERT INTO `commisioning_boards_list` (`id`, `name`) VALUES
(1, 'Commisioning Boards 1'),
(2, 'Commisioning Boards 2'),
(3, 'Commisioning Boards 3');

-- --------------------------------------------------------

--
-- Структура таблицы `complications_list`
--

CREATE TABLE `complications_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `complications_list`
--

INSERT INTO `complications_list` (`id`, `name`) VALUES
(1, 'Complication 1'),
(2, 'Complication 2'),
(3, 'Complication 3');

-- --------------------------------------------------------

--
-- Структура таблицы `followup_notes`
--

CREATE TABLE `followup_notes` (
  `id` int(11) NOT NULL,
  `micro_referral_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `followup_notes`
--

INSERT INTO `followup_notes` (`id`, `micro_referral_id`, `date_created`, `note`) VALUES
(4, 2, 4320000, 'Ex aut et assumenda dolores. Ex occaecati unde qui enim voluptate.'),
(5, 2, 1448409600, 'Aut totam et ab repellat dicta fuga corporis asperiores. Accusantium sunt qui sit.'),
(6, 2, 1442793600, 'Velit ea voluptatem qui dignissimos dicta. Placeat rem asperiores natus sint.'),
(7, 3, 1143936000, 'Aut aliquam vel totam. Laudantium consectetur rerum culpa magni voluptas debitis.'),
(8, 3, 1050105600, 'Autem quo beatae occaecati eos. Est fugiat voluptatem dolores tenetur eos consectetur.'),
(9, 3, 312768000, 'Facere sunt qui et in ad vel quam sit. Ea vero quia est culpa.'),
(10, 4, 852249600, 'Labore ipsam similique quos illum. Et et voluptates quia voluptatem.'),
(11, 4, 1062201600, 'Cum laudantium minima ea eligendi sint nisi ea qui. Rerum id neque at ut deleniti quo sunt.'),
(12, 4, 824688000, 'Ratione ut dolores sint. Ex aut et ea eveniet labore. Sed dolor provident sit quia omnis aliquam.'),
(13, 5, 529545600, 'Nihil eos voluptas unde sit. Maxime nihil dolores eveniet ratione reiciendis aut incidunt.'),
(14, 5, 441504000, 'Veniam qui nostrum aspernatur ut porro est. Natus omnis quia tenetur et non dolorem ratione est.'),
(15, 5, 767059200, 'Et et et impedit eum. Accusantium modi voluptas ea quis dolores consectetur quia recusandae.'),
(16, 6, 881625600, 'Sint voluptatem aut natus maxime occaecati. Ipsum cumque labore dicta unde magni et voluptatem.'),
(17, 6, 461635200, 'Cumque aliquam perspiciatis molestias et dicta libero. Dolor qui saepe labore.'),
(18, 6, 410832000, 'Dolores aliquid veniam est quod eaque maiores repellat. Autem voluptas officiis incidunt.'),
(19, 7, 348537600, 'Veritatis ex nihil quis amet omnis. Qui harum asperiores delectus natus voluptatibus nihil.'),
(20, 7, 1061424000, 'Quam dolores illum quam eius est accusantium voluptate. Voluptatem aut assumenda tenetur rerum aut.'),
(21, 7, 221875200, 'Velit dolorem voluptas hic veniam occaecati quae. Eius mollitia iste sint non.'),
(22, 8, 33177600, 'In impedit reprehenderit quis sit rerum. Quis voluptas illum accusantium odit.'),
(23, 8, 163814400, 'Et nam sunt et est et consequatur molestias. Soluta id eum saepe ipsa quod.'),
(24, 8, 1136419200, 'Cum aut et et eligendi expedita nam. Ullam consequatur et eos qui et debitis.'),
(25, 9, 54604800, 'Qui voluptas eos atque debitis nam fugiat. Non iusto distinctio quia ratione ducimus quos possimus.'),
(26, 9, 1185408000, 'Adipisci dolor sed id et eos ipsam cum ratione. Temporibus quo quo est distinctio itaque.'),
(27, 9, 654998400, 'Magni fuga ut et eligendi occaecati qui ullam. Nesciunt aperiam porro natus nam eos aliquid non.'),
(28, 10, 830131200, 'Vitae est ad vel molestiae neque voluptate. Nobis sit et tempore consequatur omnis eum.'),
(29, 10, 548985600, 'Temporibus enim molestiae quis facilis maxime. Id blanditiis aliquam ex eos earum.'),
(30, 10, 1279065600, 'Qui et autem non quia recusandae nemo laboriosam. Deserunt harum dolore iure et quo error.'),
(31, 11, 538444800, 'Amet sed et libero dolores dolore. Rem tempore quisquam placeat ut rem deleniti quibusdam.'),
(32, 11, 366336000, 'Laboriosam accusamus ad ipsa porro impedit. Ea ab sit enim. Fugiat omnis aut enim autem unde.'),
(33, 11, 606355200, 'Ut omnis ut ut autem. Ducimus exercitationem incidunt explicabo ut voluptatum pariatur maxime.'),
(34, 12, 77846400, 'Consequatur occaecati sequi mollitia eligendi et facere. Consequuntur saepe ratione eos atque.'),
(35, 12, 1090713600, 'Veritatis non aut voluptatem. Amet ad sit quia esse ut. Ea expedita accusantium facere.'),
(36, 12, 792979200, 'Veniam illo officiis autem temporibus quia. Quia perspiciatis ducimus culpa minima ut dolorem.'),
(37, 13, 183600000, 'Eum distinctio nulla deserunt temporibus. Nam possimus vero in esse voluptate est.'),
(38, 13, 877478400, 'Quos dolor exercitationem natus illo. Nobis vitae occaecati in molestiae repellat nulla quia.'),
(39, 13, 201052800, 'Voluptates nihil quisquam fugiat et. Delectus numquam possimus eos explicabo et est.'),
(40, 14, 325123200, 'Iste minima quam voluptatibus exercitationem. Odio molestiae fugit tempora.'),
(41, 14, 105753600, 'Cumque distinctio culpa eum aut modi minima sit. Enim sed eius qui asperiores eos deserunt.'),
(42, 14, 388972800, 'Ut iure eum porro. Rem aut illo molestias. Quam omnis facere maiores eaque in voluptatem.'),
(43, 15, 223948800, 'Sequi omnis illo quisquam dolor omnis sed iste. Reprehenderit corrupti quo atque ut dolores rerum.'),
(44, 15, 440208000, 'Enim et voluptatum id. Quis quaerat rerum ipsa beatae ut. Quos vel maxime et nemo.'),
(45, 15, 684892800, 'Quo quam culpa et tempore. Rerum enim quidem eveniet quas aut. Aliquid ut ut et nisi error.'),
(46, 16, 924739200, 'Est voluptate et et totam. Maiores culpa ut quia sunt consectetur nemo.'),
(47, 16, 617673600, 'Sunt omnis neque et laboriosam. Qui voluptas commodi in odit. Quisquam dolor neque iusto velit qui.'),
(48, 16, 726192000, 'Facere rerum amet incidunt magnam nihil. Deleniti quis ea molestias et.'),
(49, 17, 1151625600, 'Sed explicabo dolor odit omnis laborum. Occaecati similique corrupti sed qui.'),
(50, 17, 1286928000, 'Numquam et et quaerat est. Totam voluptate nisi qui consequuntur voluptatum et consequatur.'),
(51, 17, 488851200, 'Placeat et ullam ea recusandae sit ut. Et tempora et voluptatem soluta quis.'),
(52, 18, 1023840000, 'Et atque accusantium ut quibusdam id natus itaque. Omnis aut accusamus nisi aut tempora in.'),
(53, 18, 1392681600, 'Autem neque doloribus autem temporibus accusantium. Dicta ipsam alias et quisquam ad.'),
(54, 18, 1454630400, 'Natus iure assumenda nobis a. Laboriosam doloremque quia cumque perspiciatis doloribus.'),
(55, 19, 1084752000, 'Corporis corrupti occaecati qui. Placeat autem recusandae accusantium.'),
(56, 19, 340329600, 'Exercitationem dolore reiciendis commodi et. Quis laudantium natus sequi vel sunt quam.'),
(57, 19, 1056844800, 'Doloremque non laudantium ipsa beatae debitis est. Et illo qui esse laudantium accusamus iste.'),
(58, 20, 60220800, 'Perferendis sit aliquam mollitia totam vero voluptas aut. Modi et aut molestias voluptatum.'),
(59, 20, 574560000, 'Ut iusto impedit repudiandae repellendus. Et nisi ut accusamus et provident sunt.'),
(60, 20, 815011200, 'Sit fugit et doloremque. Qui sequi aperiam in quis quisquam. Eos fugit ipsam tempore earum.'),
(61, 21, 1449532800, 'Sed blanditiis ratione consequuntur error vitae ipsa harum. Earum sit sit quas.'),
(62, 21, 318643200, 'Fuga expedita itaque libero animi praesentium. Itaque error sint cum et.'),
(63, 21, 1220313600, 'Quis molestiae ut ut rerum autem asperiores. Nobis qui voluptas unde consectetur sit enim sint.'),
(64, 22, 162259200, 'Eum magni soluta accusamus. Facere rerum aut sunt et nisi. Praesentium et accusantium odit est.'),
(65, 22, 937612800, 'Et qui et sunt sed. Odit neque sit doloremque et autem suscipit esse.'),
(66, 22, 718502400, 'Voluptatibus est est rem dignissimos sed. Velit suscipit dolor sed assumenda.'),
(67, 23, 177292800, 'Et voluptatem sunt illum repudiandae porro beatae. Corrupti rerum reiciendis nihil est.'),
(68, 23, 90633600, 'Occaecati quidem cum inventore. Dolores quia dolorem officia. Assumenda ab fuga porro.'),
(69, 23, 133747200, 'Voluptatem architecto in vel numquam velit. Eius sed perspiciatis sed nihil.'),
(70, 24, 1415404800, 'Magni ut distinctio ipsa earum consequatur. Beatae beatae provident officiis eaque eius.'),
(71, 24, 1052524800, 'Non aliquid mollitia nisi earum. Totam eius culpa amet sequi atque.'),
(72, 24, 779500800, 'Quo esse aut quos recusandae ut cum esse. Et tempore culpa cum hic libero.'),
(73, 25, 224553600, 'Et placeat debitis incidunt laudantium. Non enim aut et neque. Enim ea minima eligendi qui.'),
(74, 25, 693446400, 'Modi neque id magni. Fuga aliquam alias adipisci autem saepe. Quae dolorem at ab ea aperiam.'),
(75, 25, 422236800, 'Soluta iusto veritatis aut sit eaque. Temporibus consequatur maxime nulla iure adipisci similique.'),
(76, 26, 224121600, 'Exercitationem quaerat dolores porro ipsam. Eum consequatur consequatur ut. Et omnis quam alias.'),
(77, 26, 292550400, 'Ea laudantium et voluptatem ut quo enim laborum. Ex rem veniam sed tenetur sequi.'),
(78, 26, 1456963200, 'Distinctio molestiae libero unde iste aliquid aperiam ad possimus. Sunt quo dolore veniam ea aut.'),
(79, 27, 709689600, 'Inventore beatae illum rerum eos. Dolorem eum beatae cum eligendi ex.'),
(80, 27, 911433600, 'Sint dolores et optio atque qui amet. Aut a et et.'),
(81, 27, 374976000, 'Sit praesentium sit sit aliquam temporibus velit. Quo in officiis qui itaque. Et iste odit dolor.'),
(82, 28, 953942400, 'Est ut vel vitae rerum. Aspernatur quo rem ut repellendus voluptatem.'),
(83, 28, 561945600, 'Incidunt esse molestias corrupti ad nam earum dolore et. Iure et nemo molestiae natus in voluptate.'),
(84, 28, 1295481600, 'Reprehenderit ut possimus sint quasi et recusandae. Nam dolores sunt nemo.'),
(85, 29, 884649600, 'Amet animi ullam quia sit. Et quo rerum sint architecto eveniet sed nihil.'),
(86, 29, 876268800, 'Animi aut autem eligendi modi non. Quo quis ex quasi sunt sapiente adipisci nihil.'),
(87, 29, 1302134400, 'Odio adipisci molestias qui et. Dolor quae incidunt qui. Est quia sed sequi natus necessitatibus a.'),
(88, 30, 1203379200, 'Ut repellendus quas omnis harum. Optio consectetur sed temporibus quaerat quia error.'),
(89, 30, 1147392000, 'Illo fugit velit fugit voluptatem incidunt. Est nobis eos in laborum numquam impedit et.'),
(90, 30, 1135209600, 'Quas rerum temporibus est voluptas. Enim non qui consequuntur eveniet exercitationem est.'),
(91, 31, 1041120000, 'At dolorum laudantium praesentium voluptas. Maiores non architecto vitae eius nobis.'),
(92, 31, 1376697600, 'Non fuga et laudantium consequatur. Dolores ut ab est consequuntur.'),
(93, 31, 1266537600, 'Optio sunt reiciendis ex earum. Maiores ab et illo.'),
(94, 32, 751680000, 'Qui error et aliquam dolorem quas velit. Et beatae aliquam culpa. Nisi quaerat aut rerum ut sunt.'),
(95, 32, 256176000, 'Autem qui et cupiditate. Rerum sunt sed ducimus tempore. Hic quia inventore delectus tenetur.'),
(96, 32, 580089600, 'Architecto ea ducimus ipsa. Iure quia voluptatem quibusdam exercitationem.'),
(97, 33, 562032000, 'Debitis et unde iusto fugit. Ipsa culpa deserunt quis et et delectus. Perspiciatis minima at vel.'),
(98, 33, 395625600, 'Nihil ratione magnam consequuntur hic corrupti. Perferendis saepe sed rerum ratione qui.'),
(99, 33, 218678400, 'Molestiae in possimus voluptatem qui. Odio sapiente voluptas dolores quaerat laboriosam.'),
(100, 34, 745027200, 'Aliquid sunt nisi officiis esse asperiores. Qui enim nihil ullam consequatur dolor voluptatibus.'),
(101, 34, 260496000, 'Est nemo mollitia voluptas minus illo. Sit harum eveniet et perferendis dolorem libero.'),
(102, 34, 913680000, 'Vel est quia accusamus quis. Aut recusandae ut quos perferendis. A ratione nulla quo reprehenderit.'),
(103, 35, 479260800, 'Sapiente harum maiores illo ut sunt. Debitis vel magnam asperiores quia nisi rerum.'),
(104, 35, 505180800, 'Facilis tempore nobis et. Molestiae non omnis qui porro ut corrupti. Enim officiis earum ullam.'),
(105, 35, 954547200, 'Quis aspernatur omnis iure. Cupiditate ratione officiis temporibus et.'),
(106, 36, 1353974400, 'Iure facilis enim doloremque quia dolor minima. Temporibus nulla minima sit voluptatibus.'),
(107, 36, 864259200, 'Odit eaque et id magnam asperiores sequi. Quibusdam blanditiis nostrum et eligendi.'),
(108, 36, 741484800, 'Est consequatur sint magnam tenetur. Distinctio libero ut cum. Ducimus reiciendis aut et.'),
(109, 1, 829180800, 'Voluptas facilis voluptatem nihil sed atque. Et harum architecto quas est.'),
(110, 1, 31363200, 'Quo eaque odit ut voluptatum. Deleniti error voluptates dolorem itaque.'),
(111, 1, 881193600, 'Nostrum voluptate facere placeat natus eaque non. Aliquam et in est culpa sequi molestiae.');

-- --------------------------------------------------------

--
-- Структура таблицы `gram_stains`
--

CREATE TABLE `gram_stains` (
  `id` int(11) NOT NULL,
  `blood_culture_id` int(11) NOT NULL,
  `gram_stain_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gram_stains`
--

INSERT INTO `gram_stains` (`id`, `blood_culture_id`, `gram_stain_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 3),
(4, 2, 2),
(5, 2, 2),
(6, 2, 1),
(7, 3, 1),
(8, 3, 1),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 3),
(14, 5, 1),
(15, 5, 3),
(16, 6, 2),
(17, 6, 2),
(18, 6, 3),
(19, 7, 2),
(20, 7, 1),
(21, 7, 2),
(22, 8, 2),
(23, 8, 1),
(24, 8, 2),
(25, 9, 2),
(26, 9, 1),
(27, 9, 2),
(28, 10, 2),
(29, 10, 3),
(30, 10, 3),
(31, 11, 2),
(32, 11, 3),
(33, 11, 3),
(34, 12, 2),
(35, 12, 3),
(36, 12, 1),
(37, 13, 3),
(38, 13, 1),
(39, 13, 3),
(40, 14, 2),
(41, 14, 2),
(42, 14, 3),
(43, 15, 3),
(44, 15, 1),
(45, 15, 3),
(46, 16, 1),
(47, 16, 1),
(48, 16, 2),
(49, 17, 3),
(50, 17, 2),
(51, 17, 2),
(52, 18, 1),
(53, 18, 2),
(54, 18, 1),
(55, 19, 1),
(56, 19, 1),
(57, 19, 2),
(58, 20, 3),
(59, 20, 1),
(60, 20, 3),
(61, 21, 3),
(62, 21, 1),
(63, 21, 3),
(64, 22, 3),
(65, 22, 1),
(66, 22, 1),
(67, 23, 1),
(68, 23, 1),
(69, 23, 3),
(70, 24, 3),
(71, 24, 3),
(72, 24, 2),
(73, 25, 2),
(74, 25, 3),
(75, 25, 2),
(76, 26, 3),
(77, 26, 1),
(78, 26, 2),
(79, 27, 2),
(80, 27, 2),
(81, 27, 1),
(82, 28, 3),
(83, 28, 3),
(84, 28, 1),
(85, 29, 2),
(86, 29, 2),
(87, 29, 3),
(88, 30, 2),
(89, 30, 2),
(90, 30, 3),
(91, 31, 1),
(92, 31, 2),
(93, 31, 2),
(94, 32, 1),
(95, 32, 2),
(96, 32, 2),
(97, 33, 2),
(98, 33, 1),
(99, 33, 3),
(100, 34, 2),
(101, 34, 2),
(102, 34, 1),
(103, 35, 1),
(104, 35, 2),
(105, 35, 3),
(106, 36, 3),
(107, 36, 3),
(108, 36, 1),
(109, 37, 1),
(110, 37, 3),
(111, 37, 3),
(112, 38, 1),
(113, 38, 3),
(114, 38, 3),
(115, 39, 3),
(116, 39, 1),
(117, 39, 3),
(118, 40, 2),
(119, 40, 2),
(120, 40, 1),
(121, 41, 1),
(122, 41, 3),
(123, 41, 2),
(124, 42, 3),
(125, 42, 1),
(126, 42, 3),
(127, 43, 1),
(128, 43, 2),
(129, 43, 2),
(130, 44, 3),
(131, 44, 2),
(132, 44, 2),
(133, 45, 2),
(134, 45, 1),
(135, 45, 3),
(136, 46, 3),
(137, 46, 1),
(138, 46, 2),
(139, 47, 3),
(140, 47, 3),
(141, 47, 2),
(142, 48, 3),
(143, 48, 3),
(144, 48, 1),
(145, 49, 1),
(146, 49, 1),
(147, 49, 2),
(148, 50, 3),
(149, 50, 2),
(150, 50, 3),
(151, 51, 3),
(152, 51, 2),
(153, 51, 1),
(154, 52, 1),
(155, 52, 1),
(156, 52, 1),
(157, 53, 1),
(158, 53, 2),
(159, 53, 1),
(160, 54, 2),
(161, 54, 1),
(162, 54, 3),
(163, 55, 2),
(164, 55, 2),
(165, 55, 1),
(166, 56, 1),
(167, 56, 1),
(168, 56, 1),
(169, 57, 2),
(170, 57, 3),
(171, 57, 3),
(172, 58, 3),
(173, 58, 1),
(174, 58, 2),
(175, 59, 1),
(176, 59, 1),
(177, 59, 3),
(178, 60, 2),
(179, 60, 2),
(180, 60, 1),
(181, 61, 1),
(182, 61, 2),
(183, 61, 2),
(184, 62, 2),
(185, 62, 2),
(186, 62, 1),
(187, 63, 3),
(188, 63, 3),
(189, 63, 1),
(190, 64, 3),
(191, 64, 3),
(192, 64, 3),
(193, 65, 1),
(194, 65, 3),
(195, 65, 3),
(196, 66, 1),
(197, 66, 3),
(198, 66, 1),
(199, 67, 3),
(200, 67, 1),
(201, 67, 2),
(202, 68, 3),
(203, 68, 1),
(204, 68, 1),
(205, 69, 3),
(206, 69, 2),
(207, 69, 3),
(208, 70, 2),
(209, 70, 1),
(210, 70, 2),
(211, 71, 3),
(212, 71, 2),
(213, 71, 1),
(214, 72, 1),
(215, 72, 3),
(216, 72, 3),
(217, 73, 1),
(218, 73, 1),
(219, 73, 2),
(220, 74, 3),
(221, 74, 2),
(222, 74, 1),
(223, 75, 3),
(224, 75, 1),
(225, 75, 1),
(226, 76, 3),
(227, 76, 1),
(228, 76, 1),
(229, 77, 1),
(230, 77, 2),
(231, 77, 1),
(232, 78, 2),
(233, 78, 1),
(234, 78, 3),
(235, 79, 2),
(236, 79, 1),
(237, 79, 3),
(238, 80, 1),
(239, 80, 2),
(240, 80, 2),
(241, 81, 3),
(242, 81, 2),
(243, 81, 1),
(244, 82, 2),
(245, 82, 1),
(246, 82, 2),
(247, 83, 2),
(248, 83, 2),
(249, 83, 3),
(250, 84, 2),
(251, 84, 3),
(252, 84, 2),
(253, 85, 1),
(254, 85, 2),
(255, 85, 3),
(256, 86, 3),
(257, 86, 2),
(258, 86, 3),
(259, 87, 2),
(260, 87, 2),
(261, 87, 1),
(262, 88, 1),
(263, 88, 1),
(264, 88, 3),
(265, 89, 3),
(266, 89, 2),
(267, 89, 2),
(268, 90, 3),
(269, 90, 3),
(270, 90, 2),
(271, 91, 2),
(272, 91, 1),
(273, 91, 2),
(274, 92, 1),
(275, 92, 1),
(276, 92, 2),
(277, 93, 1),
(278, 93, 2),
(279, 93, 3),
(280, 94, 2),
(281, 94, 1),
(282, 94, 3),
(283, 95, 1),
(284, 95, 1),
(285, 95, 2),
(286, 96, 2),
(287, 96, 1),
(288, 96, 1),
(289, 97, 2),
(290, 97, 1),
(291, 97, 2),
(292, 98, 2),
(293, 98, 2),
(294, 98, 3),
(295, 99, 2),
(296, 99, 3),
(297, 99, 3),
(298, 100, 1),
(299, 100, 2),
(300, 100, 3),
(301, 101, 2),
(302, 101, 1),
(303, 101, 1),
(304, 102, 2),
(305, 102, 2),
(306, 102, 1),
(307, 103, 1),
(308, 103, 3),
(309, 103, 1),
(310, 104, 2),
(311, 104, 1),
(312, 104, 3),
(313, 105, 2),
(314, 105, 2),
(315, 105, 1),
(316, 106, 2),
(317, 106, 2),
(318, 106, 1),
(319, 107, 3),
(320, 107, 3),
(321, 107, 3),
(322, 108, 1),
(323, 108, 1),
(324, 108, 2),
(325, 109, 2),
(326, 109, 3),
(327, 109, 3),
(328, 110, 2),
(329, 110, 2),
(330, 110, 1),
(331, 111, 1),
(332, 111, 1),
(333, 111, 3),
(334, 112, 2),
(335, 112, 3),
(336, 112, 3),
(337, 113, 2),
(338, 113, 2),
(339, 113, 1),
(340, 114, 1),
(341, 114, 1),
(342, 114, 3),
(343, 115, 2),
(344, 115, 3),
(345, 115, 3),
(346, 116, 2),
(347, 116, 2),
(348, 116, 1),
(349, 117, 1),
(350, 117, 1),
(351, 117, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `gram_stains_list`
--

CREATE TABLE `gram_stains_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gram_stains_list`
--

INSERT INTO `gram_stains_list` (`id`, `name`) VALUES
(1, 'Gram Stain 1'),
(2, 'Gram Stain 2'),
(3, 'Gram Stain 3'),
(4, 'Gram Stain 4');

-- --------------------------------------------------------

--
-- Структура таблицы `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`) VALUES
(1, '1023'),
(2, '1009');

-- --------------------------------------------------------

--
-- Структура таблицы `indications_list`
--

CREATE TABLE `indications_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `indications_list`
--

INSERT INTO `indications_list` (`id`, `name`) VALUES
(1, 'Indication 1'),
(2, 'Indication 2'),
(3, 'Indication 3'),
(4, 'Indication 4');

-- --------------------------------------------------------

--
-- Структура таблицы `interventions_list`
--

CREATE TABLE `interventions_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `interventions_list`
--

INSERT INTO `interventions_list` (`id`, `name`) VALUES
(1, 'Organism 1'),
(2, 'Organism 2'),
(3, 'wetwetwet');

-- --------------------------------------------------------

--
-- Структура таблицы `managing_doctors_list`
--

CREATE TABLE `managing_doctors_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `managing_doctors_list`
--

INSERT INTO `managing_doctors_list` (`id`, `name`) VALUES
(1, 'Doctor 1'),
(2, 'Doctor 2'),
(3, 'Doctor 3');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_from_id` int(11) NOT NULL,
  `user_to_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `date_created` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `is_read` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `micro_referrals`
--

CREATE TABLE `micro_referrals` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `team_bleeps` varchar(255) NOT NULL,
  `referring_doctor` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_referral` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `clinical_details` text NOT NULL,
  `medical_history` text NOT NULL,
  `investigations` text NOT NULL,
  `clinical_advice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `micro_referrals`
--

INSERT INTO `micro_referrals` (`id`, `patient_id`, `specialty_id`, `ward`, `team_bleeps`, `referring_doctor`, `date_created`, `date_referral`, `reason_id`, `clinical_details`, `medical_history`, `investigations`, `clinical_advice`) VALUES
(1, 1, 3, 'aperiam', 'sit', 'Brandt Wintheiser', 50716800, 464572800, 1, 'Non mollitia molestias ea repellat. Neque animi possimus repellat veritatis voluptas voluptatum. Ab eius hic exercitationem sequi itaque.', 'Enim et distinctio quia nihil amet quia non. Sit vero iure cum rerum debitis qui. Quia maxime ab rerum ipsa eligendi. Aut quidem unde et provident.', 'Numquam soluta explicabo et odit earum ut. Ea consequatur sint nihil et. Tenetur dolor qui suscipit voluptatem. Molestiae accusantium cum sed fugit beatae in perferendis libero.', 'Ut ut et minima dolor et est. Et molestiae et dolorum a. Repellendus ducimus ipsum quod dolores. Vero dolore sit autem voluptas.'),
(2, 2, 3, 'saepe', 'qui', 'Tiffany Franecki', 1022803200, 155174400, 1, 'Omnis ut voluptatem ad sint blanditiis sunt facilis. Fugiat accusamus autem dolor quidem explicabo doloremque necessitatibus.', 'Quia minus nisi est porro sed maxime et. Ut vero et est dolores. Non deleniti quo dolores voluptatem sed esse. Maiores reprehenderit autem ut dignissimos.', 'Eum fuga porro ea enim. Vero quae eligendi dolores excepturi. Quasi qui et cumque quibusdam. Unde minus qui voluptate reiciendis.', 'Officia tempore dolores magni totam. Vel commodi a nemo eaque et consectetur est. Laudantium ab maxime tenetur ullam.'),
(3, 3, 1, 'dignissimos', 'perferendis', 'Oleta Pacocha', 1075852800, 1209427200, 2, 'Aut et adipisci quia est. Nihil in aspernatur vero harum eos sit vitae.', 'Odit quo voluptate dolores fugiat quaerat consequuntur eum. Fugit nesciunt beatae quo recusandae. Eaque aperiam dolorem et neque. Cumque dolor tempore id eos omnis quasi.', 'Assumenda hic numquam adipisci occaecati voluptatem. Aut itaque animi in eum. Sed tempora sapiente perspiciatis. Recusandae dolorem et eos est ex saepe iste.', 'Est dolorem est vel minus quae. Ab sint qui quae sit ratione odio accusantium. Deserunt tempora et ea debitis.'),
(4, 4, 2, 'reiciendis', 'quos', 'Vida Kris', 47865600, 520041600, 2, 'Id sint magnam est voluptatem asperiores et sint. Repellat necessitatibus voluptatem libero et. Asperiores eos quis esse nesciunt voluptates.', 'Ipsa rem quae ad in cupiditate vel tenetur. Et iure architecto aspernatur cum sint velit. Aspernatur minima tempora quia assumenda ratione quas.', 'Occaecati et sed dignissimos voluptates voluptatem quas sed eaque. Ratione dolorum optio minima reprehenderit sequi nihil dolores. Dolores quisquam pariatur reiciendis assumenda nisi ipsum.', 'Sit voluptas praesentium rerum nobis. Maxime veritatis quis error.'),
(5, 5, 2, 'et', 'eos', 'Teagan Cronin', 814406400, 792115200, 2, 'Nihil necessitatibus veritatis occaecati ullam esse iusto quidem. Rerum perspiciatis sint quos accusamus quisquam labore. Architecto nam qui praesentium a iure tempora tenetur vel.', 'Et delectus consequatur alias voluptatibus. Ut ratione iste quaerat pariatur architecto iusto dolorem qui.', 'Voluptas qui debitis voluptatem et. Nihil laborum sed nobis deserunt voluptatem. Vero sunt in debitis quaerat mollitia. Rerum rerum quis velit velit illo.', 'Ratione id omnis tempore minus rerum. Nulla rerum eaque occaecati rerum. Minus consequatur ut eveniet iusto non at dolores.'),
(6, 6, 2, 'quia', 'et', 'Jon Walker', 202003200, 527299200, 3, 'Odio consequatur minima ex et enim minus. Atque et iste non dolorum in molestias quibusdam et. Nostrum recusandae sequi nihil.', 'Officiis perspiciatis ab minima delectus tempore modi modi. Occaecati qui ipsa quo et officia modi et quo. Reprehenderit sed eius amet quo in optio fugiat. Quia autem asperiores facilis in eos ut ea.', 'Veniam tempora dicta qui omnis dicta et. Et tempora ea non expedita est. Nihil consequuntur est laudantium consequatur occaecati eaque. Aspernatur est dolores veniam eum nostrum.', 'Ipsum omnis velit maiores eum corrupti ad eum. Eos quo alias dolore veniam cumque dolorum. Iste rem temporibus aut quo autem deserunt.'),
(7, 7, 2, 'porro', 'aliquam', 'Kieran Rice', 538099200, 514598400, 1, 'Veniam enim inventore quis et ea veritatis et. Velit illum assumenda aut esse.\nQui facilis aut sequi minus aut. Et sed voluptatem non quos. Minima qui corrupti sint non.', 'Officia reiciendis consequatur et qui reiciendis. Ea ea est consectetur voluptas. Vero consequuntur reiciendis nulla quia perspiciatis aut tempora. Autem non laboriosam maxime rerum.', 'Ut recusandae voluptas dolorem molestiae debitis. Tenetur sequi quia est id officiis. Molestiae aut eius et.', 'Et dolorem provident porro. Illo amet veniam aspernatur. Omnis esse occaecati aut ipsam. Quisquam et quis similique nam.'),
(8, 8, 3, 'voluptatibus', 'enim', 'Juston Herman', 816825600, 1059523200, 3, 'Modi pariatur nisi accusamus corrupti velit consectetur possimus. Delectus saepe ut eos explicabo harum occaecati. Ipsum consectetur inventore at et quia. Non unde ipsum magnam et praesentium.', 'Aliquid mollitia non officiis tempore. Et optio impedit omnis et vero. Odio eum molestiae sit hic error.', 'Rerum ut assumenda laborum. Dolores perspiciatis nulla ea ut veritatis. Enim ipsam ut quasi hic.', 'Nostrum ut fuga vel facilis suscipit nihil et. Id sint voluptas magnam temporibus. Vel ipsa molestias corrupti aliquid dolorem rerum architecto.'),
(9, 9, 1, 'architecto', 'qui', 'Graham Champlin', 302659200, 1435363200, 1, 'Exercitationem velit exercitationem rerum quia nisi omnis. Pariatur architecto est deleniti sed dolore. Quaerat voluptatum repellendus voluptates est quae. Dolore accusantium sint dolores facilis.', 'Quasi consequatur praesentium sed qui. Necessitatibus alias eveniet omnis in iusto et cumque. In minima dolorem deleniti fuga quae.', 'Culpa eligendi ut non perspiciatis. Velit quidem sed expedita cum unde. Reprehenderit deleniti earum sit nulla ducimus et.', 'Dolor quidem iure iste eaque nulla odit iusto. Temporibus quos et quos voluptate id consequatur. At velit molestias rerum molestias.'),
(10, 10, 3, 'et', 'corporis', 'Rashawn Bailey', 1404864000, 1226534400, 2, 'Minima numquam quam omnis repellat esse vero fugit voluptas. Asperiores earum excepturi et in ad expedita quas. Explicabo et doloribus eos quis nam enim.', 'Incidunt velit quis ut quos repellat. Labore est recusandae qui modi dolor suscipit voluptate corrupti.', 'Qui labore est itaque cum sunt hic. Ducimus exercitationem quo in tenetur. Ipsam nostrum officia quam quod.', 'Et rerum id veritatis nulla vero sed eligendi. Ducimus esse facere similique. Dolore saepe et eaque error quaerat aut mollitia.'),
(11, 11, 2, 'et', 'ipsa', 'Wendell Willms', 1005609600, 120787200, 1, 'Accusamus omnis et dicta ipsum. Corporis alias enim et aut blanditiis.', 'Dolor quibusdam voluptas ut et voluptate ut. Qui iste libero quia optio. Laudantium at eveniet sint blanditiis assumenda sed accusantium.', 'Commodi fuga sequi iusto illo minus magnam. Necessitatibus nesciunt corrupti aut voluptatem sequi. Voluptatem culpa quam facilis aut. Amet cupiditate eum facilis qui consequatur.', 'Aliquam ut omnis quos minus nisi officia harum. Ut autem reiciendis assumenda accusamus est. Eaque repudiandae culpa labore dicta.'),
(12, 12, 3, 'veniam', 'tempora', 'Gaston Schultz', 1139443200, 316224000, 3, 'Voluptate nostrum sunt quis non iste. Aut pariatur sint est fuga nihil illum. Sint sed ut vitae temporibus sunt. Voluptatum exercitationem possimus enim magnam dolor ullam non.', 'Numquam beatae voluptates laboriosam distinctio. Quas harum et adipisci. Exercitationem facilis nihil veritatis cum sit. Odit exercitationem qui molestiae placeat eum amet.', 'Aut alias molestias omnis doloribus. Tenetur qui ut et tenetur autem enim harum. Et modi et impedit necessitatibus repudiandae et nam.', 'Id est minima ut corporis dolorem. Autem omnis rerum voluptatem magni. At officiis tenetur esse. Eligendi consequuntur ipsam fugit voluptas.'),
(13, 13, 1, 'molestias', 'ea', 'Laurianne Ullrich', 871776000, 726019200, 1, 'Temporibus adipisci laudantium accusantium assumenda odio. Et veniam non itaque ut sit illum.', 'Nesciunt qui voluptate consequatur et ut. Vel reiciendis dolorem deserunt quae rerum. Amet voluptatum omnis et molestias occaecati. Veritatis doloremque non qui saepe sapiente.', 'Quos itaque occaecati enim mollitia deserunt. Ut aut possimus beatae. Nihil sunt officia sed quia est.', 'Possimus pariatur voluptate illo nihil quia perferendis. Aspernatur quisquam eaque dolor.'),
(14, 14, 2, 'aut', 'aperiam', 'Ursula Bauch', 473212800, 855100800, 2, 'Sit quos voluptas provident aut aliquid in. Ut ab doloremque natus nostrum.\nMinima necessitatibus ducimus perspiciatis est nobis aut natus. Earum ipsum molestiae consequatur doloremque.', 'Mollitia quasi necessitatibus sed similique vero. Blanditiis vitae ex libero.', 'Quae et a sint assumenda est velit. Unde qui numquam totam distinctio vel. Officia et veniam culpa voluptatem ad nam.', 'Consequatur aut commodi magni voluptas et quaerat sed dolores. Sapiente sit doloremque reiciendis. Repellat sed molestiae incidunt voluptatem.'),
(15, 15, 2, 'atque', 'sed', 'Ollie Keebler', 1435622400, 1179360000, 2, 'Hic occaecati odit dolores laborum. Perferendis omnis qui facere magnam in voluptatem ducimus. Repellendus exercitationem quis qui praesentium facere.', 'Sed eius inventore doloremque est at aut. Doloremque odio maiores et iusto suscipit in. Adipisci aspernatur autem eveniet accusamus similique dolor.', 'Et ullam occaecati amet culpa enim et. Fugiat doloremque animi sed velit laudantium in eligendi. Rerum sunt modi error aliquam non nulla aut.', 'Ipsam velit repellendus excepturi similique voluptate. Porro est corrupti autem cum libero.'),
(16, 16, 2, 'qui', 'suscipit', 'Monique Hodkiewicz', 964310400, 307756800, 1, 'Possimus eligendi nisi magni delectus consequatur fuga eum. Voluptatem est praesentium qui labore voluptatem quia. Velit aut facilis impedit iure voluptas accusamus.', 'Quia quod ad et voluptatibus aspernatur dolore. Minus autem minima dignissimos quia voluptatem expedita repellendus. Optio nostrum maxime commodi maxime molestias maiores.', 'Et et quia in aliquam. Et ea et voluptas temporibus. Aperiam optio vel voluptatum in ut maxime. Harum blanditiis quia non.', 'Tempore iure quis molestias repudiandae. Blanditiis porro amet totam voluptas laboriosam minima. Asperiores et dolor facere labore.'),
(17, 17, 3, 'itaque', 'aut', 'Marilie Dibbert', 1232150400, 404092800, 2, 'Necessitatibus unde dolores placeat minus possimus quas nihil voluptatum. Ut molestias ea quis alias. Nulla fugiat aspernatur cumque voluptatem eum aut.', 'Aut neque atque quo ducimus eaque nobis. Ducimus doloremque quisquam eaque corrupti facere ut. Quisquam unde quia suscipit sit.', 'Minima earum quibusdam ad ipsum sed. Consequatur corrupti vel possimus minima ea earum. Repellendus sed commodi fugit suscipit voluptatem. Rerum voluptatibus quidem minus incidunt ipsam.', 'Atque temporibus nesciunt laboriosam est fugit eos. Consequatur quam mollitia ad.'),
(18, 18, 2, 'officiis', 'autem', 'Kelley Stark', 487123200, 30844800, 1, 'Sit facilis fugit ratione est. Reiciendis reprehenderit omnis nihil omnis ad qui explicabo. Autem atque omnis rem perspiciatis atque ullam et.', 'Eum minima omnis sed et laboriosam repellendus eveniet. Occaecati sequi aperiam mollitia repellendus. Qui quia magnam dolorem excepturi quo vel quaerat.', 'Et ad illo dolorum. Accusantium qui praesentium nostrum qui hic. Et et enim nostrum iusto.', 'Nostrum sunt molestiae et amet ipsum et itaque dolore. Neque debitis sint dolorem reiciendis et.'),
(19, 19, 3, 'sed', 'illo', 'Herta Hand', 284774400, 647740800, 2, 'Possimus velit expedita labore voluptas recusandae natus velit. Qui exercitationem provident quia fugiat ullam. Sint sed id est non laborum tenetur.', 'Sit ratione voluptatem architecto ut tempora alias. At eos quos voluptatem quas. Eos porro praesentium consequatur et accusantium repudiandae.', 'Neque dolore distinctio voluptatem illo. Officiis voluptatem consequatur qui necessitatibus. Voluptas dignissimos velit dolores laudantium ipsam.', 'Sit autem quae est quidem nihil. Odio deleniti et maxime voluptas autem. Alias non nam id suscipit. Et quod id et esse molestiae doloremque autem.'),
(20, 20, 2, 'odio', 'soluta', 'Ola Wilderman', 359856000, 796348800, 1, 'Quaerat quos voluptatem et est vitae sit nisi. Quia eveniet facilis quasi dolorum sit sed. Id voluptatem perspiciatis facere accusantium velit corporis doloremque.', 'Magnam sit rerum blanditiis voluptate velit deserunt. Officiis officia non voluptatem architecto dolores sunt voluptatem. Vitae aut amet cumque corrupti expedita id velit.', 'Id alias ipsam quis et non consequatur quaerat. Dolor ea cum aliquam expedita. Deleniti sunt velit non est. Officia qui aliquid ut optio illum.', 'Harum et itaque reiciendis animi corporis. Necessitatibus laudantium ipsam omnis minus eos totam. Repellendus suscipit quos et quos ipsa eligendi ad.'),
(21, 21, 1, 'iste', 'culpa', 'Valentin Rosenbaum', 873676800, 997833600, 1, 'Aperiam quia quasi harum. Omnis iusto officia voluptatibus debitis est sint consequuntur cupiditate. Nihil explicabo rerum laudantium omnis mollitia. Minima repellat dolorum laborum nam.', 'Corporis non nihil perferendis dicta laudantium. Rerum dolorem quisquam eaque sed nihil. Quasi non quisquam qui qui distinctio odio quia. Aut dignissimos tenetur vitae alias.', 'Praesentium dolorem harum deleniti consequatur quaerat qui odit reprehenderit. Enim fuga possimus minus dolor impedit voluptas. Officia repellat officia repellendus perferendis ipsum.', 'Molestiae ad amet molestiae magnam aut vero. Consectetur cum ut natus deleniti facere. Ad perferendis aut iure asperiores aliquam molestias.'),
(22, 22, 1, 'et', 'architecto', 'Vicente Macejkovic', 507772800, 1246406400, 3, 'Adipisci in architecto a occaecati provident eveniet. Esse quisquam aut facilis. Nemo id laudantium aliquam ullam impedit sapiente. Soluta eveniet quis accusamus facilis.', 'Qui perspiciatis quo unde earum sed et repellendus. Libero dolore et aut totam. Et explicabo cumque sunt qui hic eum sint dolores. Maiores quia animi et architecto omnis nesciunt debitis enim.', 'Ad rem magni et in et alias quod. Doloremque aut et est sunt asperiores velit nihil. Illo corporis occaecati explicabo dolore et doloremque nostrum.', 'Atque consectetur illum hic unde quaerat. Autem rem ea et recusandae sunt nobis deleniti aliquid. Esse reprehenderit et occaecati.'),
(23, 23, 2, 'ea', 'nisi', 'Virginie Kunde', 1313539200, 320284800, 2, 'Illum quae veritatis distinctio est quia sed. Labore qui maxime at adipisci.\nEnim sit ut ab accusamus ea. Tempore quos non nam. Hic modi aut voluptatibus facere nostrum aut.', 'Et sint iste omnis soluta eum quisquam. Molestiae sunt eveniet cumque exercitationem et quia earum. Quia asperiores architecto at error ad. Eum dolores error nihil quaerat nulla.', 'Voluptatum rerum dignissimos suscipit nobis et laudantium ipsum. Repudiandae ut rerum et laudantium illo et deserunt. Voluptatem iure delectus mollitia ipsa.', 'Sequi rerum doloremque commodi fugit labore omnis. Dolor sed et est odio dolorum quo ut. Sunt et quibusdam libero aut assumenda.'),
(24, 24, 1, 'reprehenderit', 'repellat', 'Ardith Kilback', 689212800, 467683200, 2, 'Enim nesciunt explicabo qui pariatur minus repellat quia maxime. Blanditiis eos voluptas consectetur optio doloremque et mollitia. Ipsum deleniti neque sint dolorem optio.', 'Aut rerum ipsa voluptates unde deserunt. Voluptas eius illo ex aut tenetur corporis aut reiciendis. Occaecati distinctio explicabo enim sed. Et itaque rerum perferendis et autem enim vel.', 'Sunt iure aut et praesentium aut cupiditate. Soluta illum sint sit repellat necessitatibus id inventore. A tempora ut consequatur ut dolor cum sit. Laudantium veniam eius ut aut.', 'Quisquam at officia aut architecto. Cumque ipsa mollitia corrupti. Ab sed consequatur autem sit consequatur dolorum sit nulla.'),
(25, 25, 2, 'dolore', 'consequatur', 'Okey Graham', 342230400, 212889600, 1, 'Aliquam beatae harum et corporis et suscipit. Fugit voluptatem sint qui rerum nostrum at. Iste voluptatem sed numquam voluptatem id voluptatum. Dolorem voluptatem autem rerum magni corporis qui nemo.', 'Molestiae alias voluptatibus exercitationem ipsa quae praesentium nemo. Dolore animi laboriosam voluptatibus delectus dicta eveniet recusandae. Et mollitia alias nemo rerum voluptatem.', 'Qui aliquid consequuntur sint alias ut. Voluptas consequuntur eveniet dolore atque delectus. Quo dolorem qui non adipisci expedita doloribus. Quod laborum quia tempore.', 'Soluta voluptatum fuga voluptas unde qui ab. Accusantium maxime voluptatem ea maiores explicabo.'),
(26, 26, 1, 'earum', 'labore', 'Gaylord Altenwerth', 1415750400, 1274745600, 3, 'Nesciunt omnis quia maiores nostrum. Est soluta inventore eaque ut. Velit ex itaque facilis et soluta reprehenderit et veritatis.', 'Nam eum et ut eaque inventore autem. Veniam inventore occaecati non inventore tenetur soluta est autem.', 'Nihil ipsam officiis nam rerum incidunt et. Molestiae molestiae consectetur similique sit blanditiis commodi incidunt. Illo similique necessitatibus iste omnis necessitatibus.', 'Qui molestiae in qui assumenda molestiae. Corrupti quibusdam laborum ut maxime qui deserunt et.'),
(27, 27, 3, 'ab', 'doloribus', 'Stanley Moore', 536803200, 543024000, 1, 'Possimus dolores eius magnam cupiditate aut et. Delectus sunt et quia explicabo quo sit. Non qui quis sunt illum vitae voluptatem illum. Et ipsum et quos facilis et.', 'Aut et placeat possimus debitis in et. Quia sit cum facilis. Autem fugit explicabo voluptas aspernatur aperiam omnis. Qui autem sit labore. Pariatur consequatur ut sequi.', 'Voluptates optio adipisci omnis voluptas exercitationem. Quasi deleniti autem nam nostrum ut aperiam. Placeat fugiat ex ipsa. Nisi minima laborum magnam odit et distinctio.', 'Earum ipsum doloribus eveniet voluptatibus dolor sint. Et rerum ipsum sed nulla minus minus quos. Aperiam quo culpa et tempore est reiciendis.'),
(28, 28, 1, 'autem', 'cum', 'Rodrick Boyer', 900374400, 1214784000, 3, 'Suscipit velit alias dolores aut. Et molestiae amet dolorem ducimus dolores nihil nam. Eos non non odit. Autem et provident adipisci doloremque nulla qui.', 'Earum rem et ut dolores. Sed blanditiis eum veniam officia. Illum enim consequatur commodi officia non sunt. Consequuntur minima necessitatibus ut modi maiores dolor.', 'In laboriosam tempore et asperiores. Est dolores consequatur esse vitae accusantium dolor sit qui. Excepturi sed corporis repellendus quae.', 'Consequuntur distinctio autem expedita odio aut. Architecto itaque enim rem. Et quibusdam nesciunt deserunt recusandae est assumenda praesentium.'),
(29, 29, 1, 'nulla', 'quae', 'Yesenia Lind', 632188800, 703123200, 2, 'Est recusandae qui explicabo tempora doloremque ut. Mollitia occaecati minus porro est quaerat quibusdam dolores. Aliquid iste incidunt unde ducimus est. Similique repellendus sit sunt odit.', 'Vel pariatur molestiae explicabo ut. Dicta labore vel voluptatem. In iure id est et.', 'Aliquam repellat soluta incidunt est eligendi. Aspernatur dolores accusamus voluptatem distinctio cumque adipisci. Eum aut pariatur dignissimos dolores itaque magnam aliquam.', 'Est animi ab id deserunt eos est earum. Sed laudantium non aut earum est.'),
(30, 30, 1, 'eaque', 'nulla', 'Misty Denesik', 480038400, 1317686400, 2, 'Deleniti doloremque magni expedita explicabo eum. Modi temporibus aspernatur ipsa nobis non veritatis consequatur doloribus. Quisquam quis eos qui qui laboriosam rem.', 'Doloremque vel dolorum dolores a voluptatem illo occaecati blanditiis. Ipsam voluptatem corporis dolorum id.', 'Esse sit voluptates deserunt omnis alias. Et minus necessitatibus illo perferendis et mollitia. Ad reprehenderit eligendi sed repellendus cum. Qui nemo debitis omnis optio vel deleniti.', 'Aliquid quia distinctio hic eos error eos expedita velit. Quia iusto asperiores eos. Error sint quia incidunt sint quibusdam sequi quae.'),
(31, 31, 3, 'saepe', 'consequatur', 'Deion Sipes', 659404800, 1369872000, 1, 'Deleniti aut ut laborum consequatur et quos nemo maxime. Ea quisquam impedit rem amet. Consequatur qui nihil quibusdam ut suscipit.', 'Rem accusamus et nemo neque. Est aut nulla dolorem quia fuga. Architecto ipsa ipsum doloremque. Veritatis ad ad voluptatem.', 'Enim voluptatum error aperiam esse qui. Quisquam et ipsam aut veniam quisquam. Occaecati ipsum tenetur error rerum illum officia est. Totam et et et praesentium nobis animi.', 'Sit eos vero quod optio ut impedit. Dolor incidunt repellendus a iure.'),
(32, 32, 3, 'autem', 'aut', 'Pascale Abshire', 996364800, 327715200, 2, 'Quia consectetur tempora autem et. Corrupti et ipsa deleniti omnis voluptatem sequi. Nisi qui minus illo porro. A animi doloremque voluptatem pariatur eos ratione.', 'Perspiciatis recusandae consectetur necessitatibus. Quo saepe non molestiae accusantium. Corrupti quibusdam nemo doloribus velit.', 'Iure neque consequuntur est nesciunt doloribus. Voluptatem ad nisi ex consequatur et enim. Quaerat omnis ab voluptatem id. Et id laborum ut aliquam repellendus.', 'Fugit facilis nemo nobis accusantium molestiae aut deserunt. Omnis soluta nemo omnis saepe. Nulla consectetur beatae necessitatibus.'),
(33, 33, 1, 'qui', 'quod', 'Jerad Lehner', 301104000, 1081123200, 1, 'Ad minima officiis quas voluptatem porro. Quas qui nesciunt eaque est. Placeat sequi beatae explicabo. Dolorum repellat distinctio consequuntur expedita.', 'Veniam facilis placeat tempore voluptate quos dolore. Vel est expedita et et. Odio molestiae minima ipsa ut deserunt ut sunt. Harum rem debitis beatae.', 'Qui reprehenderit corrupti quia totam nam vel architecto. Nobis rerum consequuntur eaque. Distinctio nisi aperiam voluptates voluptate autem adipisci.', 'Eligendi quod ipsa facilis rerum. Cum exercitationem reiciendis a nobis sit.'),
(34, 34, 3, 'architecto', 'odio', 'Palma Price', 1261699200, 1359244800, 3, 'Natus magni et ea dolorem adipisci beatae. Expedita quas culpa minima ea vero sit molestiae molestias. Et atque et quis optio eius. Voluptatem enim repudiandae corporis.', 'Dolorum eligendi aliquid vero corporis ipsum molestias. Consequatur quae vel illum est assumenda impedit non omnis. Voluptatem debitis est vel eius. Est et sunt natus architecto quo quidem.', 'Est quia dolorum ut sequi sequi earum qui. Saepe dolores nobis deleniti saepe. Optio fugiat ut impedit soluta odit quis ut. Sit vel aut magni magni aspernatur est molestias.', 'Reprehenderit id accusamus quo fugiat. Ratione eligendi perspiciatis voluptas expedita. Possimus minus optio dolores explicabo.'),
(35, 35, 2, 'ipsum', 'eum', 'Braxton Murphy', 752025600, 1217635200, 1, 'Officia impedit repellat ut maiores ut quae. Id facilis id rerum at dolorum totam laudantium. Minima maiores dolorem possimus et delectus fugiat quam.', 'Hic repellendus repellat aut fuga. Eligendi quaerat nihil delectus voluptatem quidem vel deserunt. Ea labore sequi maiores ut nihil.', 'Et occaecati quod soluta qui ut adipisci ad. Aperiam voluptatem ullam velit illum vero.', 'Asperiores magnam maiores ex corporis aut ut. Deleniti earum amet velit qui doloribus omnis. Tempora ad et officia omnis dolor.'),
(36, 36, 3, 'placeat', 'facere', 'Aurore Bogan', 892339200, 104025600, 3, 'Accusantium pariatur totam dolorum quis tenetur eius. Consectetur aspernatur qui sequi labore tenetur qui nihil. Dicta dolorem est aut quae eos eum autem. Nobis ipsa sunt dicta ipsum quasi ut aut.', 'Facilis ipsa doloribus neque quo ad error sit. Est architecto possimus hic natus aliquam. Ipsum et est facilis molestiae maiores eligendi non. Sapiente cupiditate maxime magni.', 'Voluptatibus omnis minima assumenda amet facilis. Eum hic porro sunt rerum iste dicta sint. Earum molestiae debitis ducimus iste.', 'Inventore ut debitis veritatis sint nihil aut quis. Quidem vel quae quia ab. Autem asperiores quia sequi est quia architecto.');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1460794926),
('m140506_102106_rbac_init', 1460795073);

-- --------------------------------------------------------

--
-- Структура таблицы `opat`
--

CREATE TABLE `opat` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `weight` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL,
  `managing_doctor_id` int(11) NOT NULL,
  `referring_consultant_id` int(11) NOT NULL,
  `primary_infective_id` int(11) NOT NULL,
  `date_referral` int(11) NOT NULL,
  `commisioning_board_id` int(11) NOT NULL,
  `vad_type_id` int(11) NOT NULL,
  `vad_insertion_date` int(11) NOT NULL,
  `vad_removal_date` int(11) NOT NULL,
  `complications_id` int(11) NOT NULL,
  `outcome_id` int(11) NOT NULL,
  `discharge_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `opat`
--

INSERT INTO `opat` (`id`, `patient_id`, `date_created`, `sex`, `weight`, `age`, `specialty_id`, `managing_doctor_id`, `referring_consultant_id`, `primary_infective_id`, `date_referral`, `commisioning_board_id`, `vad_type_id`, `vad_insertion_date`, `vad_removal_date`, `complications_id`, `outcome_id`, `discharge_date`) VALUES
(1, 1, 110764800, 'u', '2', 3, 1, 1, 1, 2, 245980800, 2, 1, 602380800, 261619200, 2, 2, 311040000),
(2, 2, 436492800, 'q', '2', 2, 3, 3, 2, 1, 770256000, 2, 2, 1064534400, 838512000, 1, 3, 323136000),
(3, 3, 521251200, 'c', '3', 2, 3, 2, 2, 1, 548553600, 3, 2, 215654400, 951436800, 3, 2, 949968000),
(4, 4, 108604800, 't', '1', 1, 1, 1, 1, 1, 349142400, 2, 1, 306374400, 890006400, 1, 1, 609033600),
(5, 5, 164505600, 'i', '2', 3, 2, 2, 2, 2, 174441600, 1, 2, 381283200, 1206144000, 2, 1, 48384000),
(6, 6, 600998400, 'l', '3', 1, 3, 1, 3, 1, 165456000, 3, 3, 795744000, 935798400, 2, 3, 1401926400),
(7, 7, 1119225600, 't', '2', 2, 2, 3, 2, 1, 270000000, 3, 1, 644630400, 742953600, 3, 3, 300153600),
(8, 8, 1205193600, 'h', '2', 1, 1, 3, 2, 3, 1250035200, 2, 1, 485740800, 1259884800, 2, 1, 209520000),
(9, 9, 48124800, 'f', '3', 1, 2, 2, 2, 1, 1131321600, 3, 1, 935020800, 834364800, 2, 2, 1332201600),
(10, 10, 755049600, 'j', '2', 3, 3, 1, 3, 2, 537235200, 1, 3, 601603200, 690595200, 3, 1, 594259200),
(11, 11, 649036800, 'm', '1', 1, 2, 1, 1, 3, 858988800, 1, 3, 1175731200, 1353542400, 3, 1, 426902400),
(12, 12, 260150400, 'r', '3', 3, 3, 2, 2, 1, 555292800, 3, 2, 600048000, 1017446400, 3, 1, 411177600),
(13, 13, 709516800, 'q', '2', 3, 1, 2, 1, 1, 874022400, 2, 2, 1277078400, 696124800, 3, 1, 248572800),
(14, 14, 1424995200, 'p', '2', 1, 1, 3, 1, 3, 885513600, 2, 1, 696556800, 1061596800, 1, 1, 117504000),
(15, 15, 471052800, 'q', '3', 3, 3, 1, 1, 2, 529804800, 3, 2, 1137456000, 308102400, 3, 2, 152409600),
(16, 16, 1325116800, 'v', '1', 2, 2, 1, 1, 1, 599702400, 3, 2, 289267200, 1400716800, 3, 1, 995673600),
(17, 17, 261878400, 'j', '3', 2, 3, 2, 3, 2, 1107216000, 3, 1, 1212105600, 289094400, 2, 2, 739152000),
(18, 18, 64454400, 't', '3', 1, 1, 3, 3, 2, 544752000, 3, 2, 985737600, 1447891200, 2, 1, 691632000),
(19, 19, 1363564800, 'f', '2', 2, 1, 1, 3, 2, 429580800, 1, 3, 948067200, 946166400, 1, 1, 1048636800),
(20, 20, 1316563200, 'o', '1', 3, 3, 2, 3, 1, 560476800, 2, 2, 335664000, 976924800, 3, 3, 1275350400),
(21, 21, 634176000, 'j', '1', 3, 2, 1, 1, 1, 555897600, 1, 3, 271555200, 1413331200, 3, 3, 444960000),
(22, 22, 427075200, 't', '1', 1, 1, 3, 3, 1, 561081600, 3, 1, 536371200, 345686400, 1, 3, 459302400),
(23, 23, 487382400, 'n', '2', 3, 1, 3, 3, 3, 829267200, 1, 1, 1448841600, 196214400, 3, 1, 136080000),
(24, 24, 1280534400, 'i', '1', 2, 2, 3, 3, 1, 1245628800, 2, 3, 1348790400, 523843200, 2, 3, 412905600),
(25, 25, 1265760000, 'p', '2', 2, 3, 3, 3, 2, 1259193600, 3, 2, 753148800, 659318400, 2, 1, 1125705600),
(26, 26, 778723200, 'f', '2', 1, 2, 1, 1, 2, 849225600, 3, 1, 1253836800, 1274572800, 3, 3, 81734400),
(27, 27, 622598400, 'u', '3', 2, 3, 2, 2, 3, 180835200, 1, 2, 1284768000, 723859200, 2, 3, 1307664000),
(28, 28, 1015372800, 'b', '3', 1, 3, 3, 1, 3, 123811200, 2, 1, 768096000, 306028800, 2, 2, 507600000),
(29, 29, 814579200, 'g', '3', 2, 1, 3, 2, 3, 1380067200, 1, 2, 987120000, 811555200, 3, 3, 309571200),
(30, 30, 1166054400, 's', '1', 1, 2, 1, 2, 1, 316224000, 3, 3, 261878400, 1056758400, 1, 3, 35337600),
(31, 31, 1073865600, 'l', '2', 1, 3, 1, 2, 2, 769651200, 2, 3, 88128000, 827107200, 1, 3, 1387411200),
(32, 32, 1355184000, 'q', '1', 1, 2, 2, 2, 3, 20390400, 2, 1, 1142640000, 915667200, 1, 1, 1124755200),
(33, 33, 1218585600, 'y', '3', 3, 3, 3, 2, 1, 607392000, 3, 3, 1019347200, 157248000, 3, 2, 1287014400),
(34, 34, 181440000, 'v', '1', 3, 1, 2, 3, 1, 1253750400, 2, 1, 1109289600, 1318809600, 1, 3, 1146873600),
(35, 35, 842400000, 'c', '1', 1, 2, 2, 2, 1, 713404800, 2, 2, 128390400, 72403200, 3, 1, 86140800),
(36, 36, 451094400, 'e', '1', 3, 2, 1, 2, 3, 282096000, 3, 3, 805248000, 651715200, 1, 3, 994204800);

-- --------------------------------------------------------

--
-- Структура таблицы `organisms`
--

CREATE TABLE `organisms` (
  `id` int(11) NOT NULL,
  `organism_id` int(11) NOT NULL,
  `blood_culture_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organisms`
--

INSERT INTO `organisms` (`id`, `organism_id`, `blood_culture_id`) VALUES
(1, 3, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 2),
(5, 3, 2),
(6, 1, 2),
(7, 1, 3),
(8, 1, 3),
(9, 3, 3),
(10, 2, 4),
(11, 1, 4),
(12, 3, 4),
(13, 2, 5),
(14, 3, 5),
(15, 1, 5),
(16, 2, 6),
(17, 2, 6),
(18, 3, 6),
(19, 2, 7),
(20, 3, 7),
(21, 3, 7),
(22, 2, 8),
(23, 2, 8),
(24, 3, 8),
(25, 3, 9),
(26, 3, 9),
(27, 1, 9),
(28, 3, 10),
(29, 3, 10),
(30, 1, 10),
(31, 2, 11),
(32, 3, 11),
(33, 2, 11),
(34, 3, 12),
(35, 3, 12),
(36, 2, 12),
(37, 3, 13),
(38, 1, 13),
(39, 3, 13),
(40, 3, 14),
(41, 3, 14),
(42, 1, 14),
(43, 2, 15),
(44, 2, 15),
(45, 3, 15),
(46, 3, 16),
(47, 3, 16),
(48, 3, 16),
(49, 1, 17),
(50, 1, 17),
(51, 3, 17),
(52, 2, 18),
(53, 1, 18),
(54, 2, 18),
(55, 3, 19),
(56, 3, 19),
(57, 1, 19),
(58, 1, 20),
(59, 3, 20),
(60, 1, 20),
(61, 2, 21),
(62, 2, 21),
(63, 2, 21),
(64, 3, 22),
(65, 3, 22),
(66, 2, 22),
(67, 3, 23),
(68, 3, 23),
(69, 1, 23),
(70, 2, 24),
(71, 1, 24),
(72, 2, 24),
(73, 3, 25),
(74, 1, 25),
(75, 2, 25),
(76, 1, 26),
(77, 1, 26),
(78, 3, 26),
(79, 1, 27),
(80, 3, 27),
(81, 3, 27),
(82, 1, 28),
(83, 1, 28),
(84, 3, 28),
(85, 2, 29),
(86, 1, 29),
(87, 2, 29),
(88, 1, 30),
(89, 3, 30),
(90, 3, 30),
(91, 2, 31),
(92, 1, 31),
(93, 2, 31),
(94, 3, 32),
(95, 1, 32),
(96, 1, 32),
(97, 3, 33),
(98, 3, 33),
(99, 2, 33),
(100, 2, 34),
(101, 2, 34),
(102, 3, 34),
(103, 2, 35),
(104, 2, 35),
(105, 1, 35),
(106, 2, 36),
(107, 3, 36),
(108, 2, 36),
(109, 3, 37),
(110, 1, 37),
(111, 1, 37),
(112, 1, 38),
(113, 1, 38),
(114, 3, 38),
(115, 2, 39),
(116, 1, 39),
(117, 1, 39),
(118, 1, 40),
(119, 2, 40),
(120, 2, 40),
(121, 2, 41),
(122, 2, 41),
(123, 2, 41),
(124, 2, 42),
(125, 2, 42),
(126, 3, 42),
(127, 1, 43),
(128, 1, 43),
(129, 3, 43),
(130, 1, 44),
(131, 1, 44),
(132, 3, 44),
(133, 2, 45),
(134, 3, 45),
(135, 1, 45),
(136, 1, 46),
(137, 3, 46),
(138, 3, 46),
(139, 3, 47),
(140, 3, 47),
(141, 2, 47),
(142, 1, 48),
(143, 2, 48),
(144, 3, 48),
(145, 3, 49),
(146, 1, 49),
(147, 3, 49),
(148, 2, 50),
(149, 1, 50),
(150, 3, 50),
(151, 3, 51),
(152, 2, 51),
(153, 3, 51),
(154, 3, 52),
(155, 3, 52),
(156, 2, 52),
(157, 1, 53),
(158, 3, 53),
(159, 1, 53),
(160, 3, 54),
(161, 1, 54),
(162, 2, 54),
(163, 2, 55),
(164, 3, 55),
(165, 2, 55),
(166, 2, 56),
(167, 2, 56),
(168, 1, 56),
(169, 2, 57),
(170, 1, 57),
(171, 1, 57),
(172, 1, 58),
(173, 3, 58),
(174, 3, 58),
(175, 1, 59),
(176, 3, 59),
(177, 2, 59),
(178, 3, 60),
(179, 1, 60),
(180, 3, 60),
(181, 3, 61),
(182, 1, 61),
(183, 3, 61),
(184, 1, 62),
(185, 1, 62),
(186, 2, 62),
(187, 1, 63),
(188, 3, 63),
(189, 2, 63),
(190, 1, 64),
(191, 2, 64),
(192, 1, 64),
(193, 1, 65),
(194, 2, 65),
(195, 1, 65),
(196, 3, 66),
(197, 2, 66),
(198, 3, 66),
(199, 1, 67),
(200, 1, 67),
(201, 3, 67),
(202, 3, 68),
(203, 3, 68),
(204, 3, 68),
(205, 1, 69),
(206, 3, 69),
(207, 3, 69),
(208, 2, 70),
(209, 2, 70),
(210, 3, 70),
(211, 3, 71),
(212, 1, 71),
(213, 2, 71),
(214, 1, 72),
(215, 1, 72),
(216, 1, 72),
(217, 3, 73),
(218, 2, 73),
(219, 2, 73),
(220, 3, 74),
(221, 3, 74),
(222, 1, 74),
(223, 1, 75),
(224, 1, 75),
(225, 3, 75),
(226, 1, 76),
(227, 3, 76),
(228, 2, 76),
(229, 3, 77),
(230, 2, 77),
(231, 3, 77),
(232, 1, 78),
(233, 3, 78),
(234, 3, 78),
(235, 2, 79),
(236, 1, 79),
(237, 3, 79),
(238, 3, 80),
(239, 3, 80),
(240, 3, 80),
(241, 1, 81),
(242, 2, 81),
(243, 1, 81),
(244, 2, 82),
(245, 2, 82),
(246, 3, 82),
(247, 2, 83),
(248, 2, 83),
(249, 2, 83),
(250, 2, 84),
(251, 2, 84),
(252, 2, 84),
(253, 3, 85),
(254, 2, 85),
(255, 2, 85),
(256, 3, 86),
(257, 2, 86),
(258, 1, 86),
(259, 3, 87),
(260, 2, 87),
(261, 3, 87),
(262, 3, 88),
(263, 1, 88),
(264, 3, 88),
(265, 2, 89),
(266, 2, 89),
(267, 1, 89),
(268, 1, 90),
(269, 3, 90),
(270, 1, 90),
(271, 1, 91),
(272, 1, 91),
(273, 1, 91),
(274, 3, 92),
(275, 3, 92),
(276, 1, 92),
(277, 3, 93),
(278, 3, 93),
(279, 3, 93),
(280, 1, 94),
(281, 1, 94),
(282, 1, 94),
(283, 3, 95),
(284, 1, 95),
(285, 1, 95),
(286, 2, 96),
(287, 1, 96),
(288, 1, 96),
(289, 3, 97),
(290, 2, 97),
(291, 2, 97),
(292, 1, 98),
(293, 1, 98),
(294, 3, 98),
(295, 1, 99),
(296, 2, 99),
(297, 1, 99),
(298, 2, 100),
(299, 1, 100),
(300, 3, 100),
(301, 1, 101),
(302, 3, 101),
(303, 1, 101),
(304, 2, 102),
(305, 1, 102),
(306, 2, 102),
(307, 1, 103),
(308, 2, 103),
(309, 2, 103),
(310, 2, 104),
(311, 1, 104),
(312, 2, 104),
(313, 2, 105),
(314, 3, 105),
(315, 2, 105),
(316, 2, 106),
(317, 2, 106),
(318, 1, 106),
(319, 3, 107),
(320, 2, 107),
(321, 2, 107),
(322, 2, 108),
(323, 1, 108),
(324, 1, 108),
(325, 3, 109),
(326, 1, 109),
(327, 1, 109),
(328, 1, 110),
(329, 3, 110),
(330, 1, 110),
(331, 1, 111),
(332, 1, 111),
(333, 3, 111),
(334, 3, 112),
(335, 1, 112),
(336, 1, 112),
(337, 1, 113),
(338, 3, 113),
(339, 1, 113),
(340, 1, 114),
(341, 1, 114),
(342, 3, 114),
(343, 3, 115),
(344, 1, 115),
(345, 1, 115),
(346, 1, 116),
(347, 3, 116),
(348, 1, 116),
(349, 1, 117),
(350, 1, 117),
(351, 3, 117);

-- --------------------------------------------------------

--
-- Структура таблицы `organisms_list`
--

CREATE TABLE `organisms_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organisms_list`
--

INSERT INTO `organisms_list` (`id`, `name`) VALUES
(1, 'Organism 1'),
(2, 'Organism 2'),
(3, 'Organism 3'),
(4, 'Organism 4');

-- --------------------------------------------------------

--
-- Структура таблицы `outcomes_list`
--

CREATE TABLE `outcomes_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `outcomes_list`
--

INSERT INTO `outcomes_list` (`id`, `name`) VALUES
(1, 'Outcome 1'),
(2, 'Outcome 2'),
(3, 'Outcome 3'),
(4, 'etetettwe');

-- --------------------------------------------------------

--
-- Структура таблицы `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `date_birth` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `doctor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `patients`
--

INSERT INTO `patients` (`id`, `name`, `surname`, `date_birth`, `date_created`, `status`, `doctor_id`) VALUES
(1, 'Howard', 'Ernser', 72316800, 880070400, 1, 1),
(2, 'Euna', 'Reinger', 1132185600, 1266796800, 1, 1),
(3, 'Emanuel', 'Pfeffer', 575078400, 103939200, 1, 1),
(4, 'Salvatore', 'Crona', 1289692800, 469065600, 1, 2),
(5, 'Ewald', 'Brekke', 248832000, 781056000, 1, 2),
(6, 'Marta', 'Kutch', 757382400, 1286323200, 1, 2),
(7, 'Ryan', 'Langworth', 1065225600, 550195200, 1, 3),
(8, 'Providenci', 'O\'Connell', 246067200, 112492800, 1, 3),
(9, 'Moises', 'Jerde', 725328000, 839030400, 1, 3),
(10, 'Delphine', 'Nitzsche', 864864000, 391824000, 1, 4),
(11, 'Kaley', 'Cole', 45705600, 616118400, 1, 4),
(12, 'Lon', 'Wiza', 624931200, 561340800, 1, 4),
(13, 'Neva', 'Bruen', 672278400, 105321600, 1, 7),
(14, 'Ron', 'Prohaska', 1437350400, 906076800, 1, 7),
(15, 'Isaias', 'Waelchi', 59270400, 593049600, 1, 7),
(16, 'Marietta', 'Hackett', 979603200, 296092800, 1, 8),
(17, 'Blanche', 'Kautzer', 526176000, 878428800, 1, 8),
(18, 'Joany', 'Roob', 521424000, 417571200, 1, 8),
(19, 'Nicole', 'Gerhold', 614649600, 733536000, 1, 10),
(20, 'Cristobal', 'Littel', 85449600, 735004800, 1, 10),
(21, 'Haylee', 'Bogan', 1219968000, 1355184000, 1, 10),
(22, 'Gaylord', 'Hoeger', 585360000, 419212800, 1, 17),
(23, 'Petra', 'Effertz', 685324800, 721872000, 1, 17),
(24, 'Sonya', 'Graham', 1147824000, 132451200, 1, 17),
(25, 'Neal', 'Johnson', 87436800, 503798400, 1, 18),
(26, 'Bradly', 'Marks', 965779200, 503625600, 1, 18),
(27, 'Lola', 'Ankunding', 1397779200, 627091200, 1, 18),
(28, 'Cecile', 'Senger', 947980800, 1326931200, 1, 19),
(29, 'Trent', 'Padberg', 916876800, 748051200, 1, 19),
(30, 'Isabell', 'Cormier', 118281600, 462931200, 1, 19),
(31, 'Lucie', 'Armstrong', 234489600, 1060473600, 1, 20),
(32, 'Jolie', 'Bergnaum', 300758400, 870134400, 1, 20),
(33, 'Sadie', 'Sipes', 660009600, 235440000, 1, 20),
(34, 'Isabel', 'Nolan', 533174400, 958348800, 1, 21),
(35, 'Idell', 'Eichmann', 1043539200, 16934400, 1, 21),
(36, 'Vivianne', 'Fay', 66355200, 887068800, 1, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `pcat`
--

CREATE TABLE `pcat` (
  `id` int(11) NOT NULL,
  `micro_referral_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `date_commenced` int(11) NOT NULL,
  `date_stop` int(11) NOT NULL,
  `indication_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `pcat`
--

INSERT INTO `pcat` (`id`, `micro_referral_id`, `agent_id`, `date_commenced`, `date_stop`, `indication_id`) VALUES
(4, 2, 2, 1007596800, 1370217600, 2),
(5, 2, 2, 1093392000, 17625600, 3),
(6, 2, 2, 201571200, 427766400, 2),
(7, 3, 2, 741744000, 1063238400, 1),
(8, 3, 3, 1211414400, 379296000, 1),
(9, 3, 1, 1095033600, 76550400, 2),
(10, 4, 2, 477532800, 147225600, 1),
(11, 4, 1, 103507200, 883008000, 2),
(12, 4, 2, 122428800, 571276800, 3),
(13, 5, 3, 361324800, 726969600, 3),
(14, 5, 2, 962496000, 1328572800, 1),
(15, 5, 3, 752976000, 696384000, 3),
(16, 6, 2, 887414400, 1253750400, 2),
(17, 6, 2, 258768000, 929404800, 2),
(18, 6, 1, 1243209600, 163555200, 3),
(19, 7, 3, 911606400, 1348185600, 2),
(20, 7, 2, 733276800, 301536000, 3),
(21, 7, 2, 873158400, 1286323200, 3),
(22, 8, 3, 1237593600, 1325721600, 2),
(23, 8, 3, 480384000, 493776000, 2),
(24, 8, 1, 593913600, 1264550400, 2),
(25, 9, 2, 750384000, 520646400, 3),
(26, 9, 3, 1227484800, 630892800, 2),
(27, 9, 3, 1306627200, 797299200, 2),
(28, 10, 2, 1208736000, 1462147200, 3),
(29, 10, 1, 1457740800, 55468800, 2),
(30, 10, 3, 324691200, 669340800, 3),
(31, 11, 1, 259977600, 203299200, 3),
(32, 11, 2, 899251200, 592876800, 1),
(33, 11, 1, 81388800, 829440000, 3),
(34, 12, 3, 154137600, 490320000, 3),
(35, 12, 3, 96854400, 1049155200, 2),
(36, 12, 3, 1378598400, 453772800, 3),
(37, 13, 2, 163555200, 184982400, 1),
(38, 13, 3, 928800000, 793584000, 3),
(39, 13, 2, 1317081600, 1150588800, 1),
(40, 14, 2, 1195430400, 654393600, 1),
(41, 14, 2, 758851200, 41558400, 1),
(42, 14, 3, 589075200, 719971200, 3),
(43, 15, 3, 1406246400, 1409875200, 2),
(44, 15, 2, 214617600, 1072569600, 3),
(45, 15, 1, 1220227200, 1255824000, 1),
(46, 16, 2, 929318400, 356918400, 1),
(47, 16, 3, 820886400, 813542400, 3),
(48, 16, 2, 459475200, 470620800, 1),
(49, 17, 1, 690940800, 1040860800, 2),
(50, 17, 1, 1435104000, 594432000, 3),
(51, 17, 1, 327456000, 1400025600, 2),
(52, 18, 3, 433296000, 1102896000, 1),
(53, 18, 2, 935193600, 270518400, 2),
(54, 18, 3, 480384000, 599529600, 2),
(55, 19, 1, 205545600, 1203638400, 3),
(56, 19, 1, 675388800, 1127001600, 2),
(57, 19, 1, 39916800, 945388800, 1),
(58, 20, 3, 759542400, 1405209600, 2),
(59, 20, 1, 1404777600, 144201600, 2),
(60, 20, 1, 856310400, 1359072000, 3),
(61, 21, 1, 559180800, 1062547200, 1),
(62, 21, 1, 1242172800, 212630400, 2),
(63, 21, 2, 129772800, 1378684800, 1),
(64, 22, 1, 348451200, 448848000, 1),
(65, 22, 3, 252288000, 180489600, 3),
(66, 22, 1, 454204800, 1154476800, 3),
(67, 23, 3, 672451200, 1014163200, 2),
(68, 23, 3, 98668800, 475113600, 3),
(69, 23, 3, 915235200, 1351296000, 2),
(70, 24, 3, 771811200, 657158400, 3),
(71, 24, 2, 790128000, 873331200, 1),
(72, 24, 1, 427507200, 1102723200, 3),
(73, 25, 3, 253929600, 138499200, 1),
(74, 25, 3, 643939200, 924393600, 3),
(75, 25, 2, 791856000, 1138060800, 2),
(76, 26, 2, 283737600, 832032000, 2),
(77, 26, 1, 893116800, 223948800, 3),
(78, 26, 2, 1042675200, 975196800, 2),
(79, 27, 1, 986688000, 1123372800, 3),
(80, 27, 2, 1164931200, 54950400, 3),
(81, 27, 2, 50889600, 793497600, 3),
(82, 28, 3, 878774400, 950745600, 1),
(83, 28, 2, 65577600, 559353600, 3),
(84, 28, 1, 1044748800, 138672000, 1),
(85, 29, 1, 1235347200, 343180800, 3),
(86, 29, 2, 1138924800, 1093305600, 1),
(87, 29, 2, 368236800, 1081555200, 2),
(88, 30, 2, 927590400, 340070400, 1),
(89, 30, 3, 304732800, 549331200, 1),
(90, 30, 3, 337478400, 229046400, 2),
(91, 31, 1, 1078704000, 999561600, 3),
(92, 31, 2, 1140998400, 495763200, 2),
(93, 31, 1, 1371168000, 916012800, 2),
(94, 32, 3, 919555200, 827020800, 3),
(95, 32, 1, 673833600, 857260800, 3),
(96, 32, 1, 803865600, 1329868800, 3),
(97, 33, 3, 758764800, 611020800, 1),
(98, 33, 2, 998006400, 45532800, 3),
(99, 33, 3, 1247184000, 1274832000, 2),
(100, 34, 2, 596246400, 1173139200, 2),
(101, 34, 2, 490579200, 524534400, 1),
(102, 34, 2, 872035200, 1328745600, 3),
(103, 35, 3, 406771200, 144892800, 2),
(104, 35, 1, 57715200, 470966400, 2),
(105, 35, 2, 160358400, 398822400, 1),
(106, 36, 3, 1449273600, 733104000, 1),
(107, 36, 2, 933552000, 519436800, 1),
(108, 36, 2, 520992000, 31881600, 1),
(109, 1, 2, 1641600, 492220800, 2),
(110, 1, 3, 1209686400, 1357948800, 1),
(111, 1, 2, 1241049600, 955929600, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `primary_infective_list`
--

CREATE TABLE `primary_infective_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `primary_infective_list`
--

INSERT INTO `primary_infective_list` (`id`, `name`) VALUES
(1, 'PID 1'),
(2, 'PID 2'),
(3, 'PID 3');

-- --------------------------------------------------------

--
-- Структура таблицы `reasons_list`
--

CREATE TABLE `reasons_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reasons_list`
--

INSERT INTO `reasons_list` (`id`, `name`) VALUES
(1, 'Reason 1'),
(2, 'Reason 2'),
(3, 'Reason 3'),
(4, 'Reason 4');

-- --------------------------------------------------------

--
-- Структура таблицы `referring_consultants_list`
--

CREATE TABLE `referring_consultants_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `referring_consultants_list`
--

INSERT INTO `referring_consultants_list` (`id`, `name`) VALUES
(1, 'Referring consultant 1'),
(2, 'Referring consultant 2'),
(3, 'Referring consultant 3');

-- --------------------------------------------------------

--
-- Структура таблицы `rvs_list`
--

CREATE TABLE `rvs_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `rvs_list`
--

INSERT INTO `rvs_list` (`id`, `name`) VALUES
(1, 'Organism 1'),
(2, 'Organism 2'),
(3, 'wetwetwt');

-- --------------------------------------------------------

--
-- Структура таблицы `significants_list`
--

CREATE TABLE `significants_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `significants_list`
--

INSERT INTO `significants_list` (`id`, `name`) VALUES
(1, 'Significant 1'),
(2, 'Significant 2'),
(3, 'Significant 3'),
(4, 'Significant 4');

-- --------------------------------------------------------

--
-- Структура таблицы `specialties_list`
--

CREATE TABLE `specialties_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specialties_list`
--

INSERT INTO `specialties_list` (`id`, `name`) VALUES
(1, 'Specialty 1'),
(2, 'Specialty 2'),
(3, 'Specialty 3'),
(4, 'Specialty 4'),
(5, 'test'),
(6, 'awrawrawr'),
(7, 'tester');

-- --------------------------------------------------------

--
-- Структура таблицы `stewardships`
--

CREATE TABLE `stewardships` (
  `id` int(11) NOT NULL,
  `micro_referral_id` int(11) NOT NULL,
  `idic` int(1) NOT NULL,
  `sdic` int(11) NOT NULL,
  `ppi` int(11) NOT NULL,
  `rv_id` int(11) NOT NULL,
  `intervention_id` int(11) NOT NULL,
  `outcome_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stewardships`
--

INSERT INTO `stewardships` (`id`, `micro_referral_id`, `idic`, `sdic`, `ppi`, `rv_id`, `intervention_id`, `outcome_id`) VALUES
(4, 2, 1, 0, 0, 2, 2, 1),
(5, 2, 1, 0, 1, 1, 1, 1),
(6, 2, 0, 0, 0, 3, 2, 1),
(7, 3, 1, 1, 0, 2, 2, 1),
(8, 3, 1, 1, 0, 3, 3, 1),
(9, 3, 1, 0, 0, 3, 3, 1),
(10, 4, 0, 1, 1, 1, 1, 1),
(11, 4, 1, 0, 1, 2, 1, 1),
(12, 4, 1, 0, 1, 1, 1, 1),
(13, 5, 0, 1, 1, 2, 2, 1),
(14, 5, 1, 0, 1, 2, 3, 1),
(15, 5, 0, 1, 0, 1, 2, 1),
(16, 6, 1, 1, 0, 2, 1, 1),
(17, 6, 0, 1, 0, 1, 3, 1),
(18, 6, 1, 0, 1, 3, 3, 1),
(19, 7, 0, 1, 1, 3, 1, 1),
(20, 7, 1, 1, 1, 1, 1, 1),
(21, 7, 0, 0, 0, 2, 1, 1),
(22, 8, 0, 1, 1, 2, 2, 1),
(23, 8, 0, 1, 0, 2, 1, 1),
(24, 8, 0, 0, 0, 3, 1, 1),
(25, 9, 1, 0, 0, 3, 1, 1),
(26, 9, 0, 1, 0, 1, 1, 1),
(27, 9, 1, 1, 0, 3, 1, 1),
(28, 10, 0, 0, 1, 3, 1, 1),
(29, 10, 1, 0, 0, 2, 2, 1),
(30, 10, 0, 0, 1, 3, 2, 1),
(31, 11, 0, 1, 0, 1, 2, 1),
(32, 11, 0, 0, 0, 1, 2, 1),
(33, 11, 0, 1, 0, 2, 1, 1),
(34, 12, 0, 1, 1, 1, 1, 1),
(35, 12, 0, 1, 0, 2, 1, 1),
(36, 12, 0, 1, 1, 1, 1, 1),
(37, 13, 1, 1, 0, 2, 1, 1),
(38, 13, 1, 1, 1, 1, 2, 1),
(39, 13, 0, 0, 1, 1, 3, 1),
(40, 14, 0, 1, 1, 3, 2, 1),
(41, 14, 1, 1, 1, 2, 1, 1),
(42, 14, 1, 1, 0, 2, 3, 1),
(43, 15, 0, 0, 0, 1, 1, 1),
(44, 15, 1, 0, 1, 2, 1, 1),
(45, 15, 0, 1, 1, 2, 2, 1),
(46, 16, 0, 1, 0, 3, 2, 1),
(47, 16, 1, 1, 0, 1, 1, 1),
(48, 16, 0, 1, 1, 1, 3, 1),
(49, 17, 0, 0, 0, 2, 2, 1),
(50, 17, 1, 1, 1, 2, 3, 1),
(51, 17, 0, 1, 0, 1, 3, 1),
(52, 18, 0, 1, 1, 2, 3, 1),
(53, 18, 0, 1, 0, 1, 2, 1),
(54, 18, 1, 0, 1, 2, 2, 1),
(55, 19, 0, 1, 1, 2, 1, 1),
(56, 19, 0, 1, 0, 1, 2, 1),
(57, 19, 0, 0, 1, 3, 1, 1),
(58, 20, 0, 1, 1, 1, 2, 1),
(59, 20, 0, 1, 0, 1, 3, 1),
(60, 20, 0, 1, 1, 1, 1, 1),
(61, 21, 0, 0, 0, 3, 3, 1),
(62, 21, 1, 1, 0, 3, 2, 1),
(63, 21, 0, 1, 1, 2, 1, 1),
(64, 22, 0, 1, 0, 1, 3, 1),
(65, 22, 0, 0, 1, 3, 1, 1),
(66, 22, 1, 0, 1, 1, 3, 1),
(67, 23, 0, 1, 1, 2, 2, 1),
(68, 23, 1, 1, 0, 3, 3, 1),
(69, 23, 1, 0, 0, 3, 3, 1),
(70, 24, 0, 0, 1, 1, 2, 1),
(71, 24, 0, 0, 1, 3, 1, 1),
(72, 24, 0, 1, 0, 3, 3, 1),
(73, 25, 0, 0, 0, 3, 2, 1),
(74, 25, 1, 0, 1, 3, 1, 1),
(75, 25, 1, 1, 0, 3, 2, 1),
(76, 26, 0, 1, 1, 3, 1, 1),
(77, 26, 1, 1, 0, 3, 3, 1),
(78, 26, 1, 0, 0, 2, 3, 1),
(79, 27, 0, 1, 1, 2, 1, 1),
(80, 27, 0, 1, 1, 1, 1, 1),
(81, 27, 1, 0, 1, 3, 3, 1),
(82, 28, 0, 1, 1, 3, 3, 1),
(83, 28, 1, 1, 1, 2, 3, 1),
(84, 28, 0, 0, 1, 2, 2, 1),
(85, 29, 1, 1, 0, 1, 2, 1),
(86, 29, 0, 0, 0, 3, 3, 1),
(87, 29, 1, 0, 1, 2, 1, 1),
(88, 30, 1, 1, 1, 3, 2, 1),
(89, 30, 1, 0, 1, 1, 3, 1),
(90, 30, 1, 1, 1, 2, 2, 1),
(91, 31, 1, 0, 1, 1, 2, 1),
(92, 31, 1, 1, 0, 2, 1, 1),
(93, 31, 1, 0, 0, 2, 2, 1),
(94, 32, 0, 0, 0, 1, 1, 1),
(95, 32, 0, 1, 0, 3, 2, 1),
(96, 32, 1, 0, 1, 2, 3, 1),
(97, 33, 0, 0, 1, 3, 2, 1),
(98, 33, 1, 0, 0, 2, 1, 1),
(99, 33, 0, 1, 1, 1, 3, 1),
(100, 34, 1, 1, 0, 3, 2, 1),
(101, 34, 1, 1, 1, 2, 1, 1),
(102, 34, 0, 0, 0, 1, 3, 1),
(103, 35, 0, 1, 0, 3, 2, 1),
(104, 35, 1, 0, 0, 2, 1, 1),
(105, 35, 0, 1, 0, 3, 2, 1),
(106, 36, 1, 1, 0, 1, 2, 1),
(107, 36, 1, 1, 0, 2, 2, 1),
(108, 36, 1, 0, 0, 3, 3, 1),
(109, 1, 0, 0, 0, 0, 0, 0),
(110, 1, 0, 0, 0, 0, 0, 0),
(111, 1, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_type` varchar(255) NOT NULL,
  `folder` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `uploads`
--

INSERT INTO `uploads` (`id`, `filename`, `item_id`, `item_type`, `folder`, `date_created`) VALUES
(1, 'for_test.jpg', 1, 'micro_referral', '146523258547725755acca00aa5', 1465232585);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `date_birth` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `role_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `surname`, `auth_key`, `date_birth`, `phone`, `email`, `status`, `role_id`, `hospital_id`) VALUES
(1, 'Administrator', '$2y$13$QWm63xquU8Tp5PjN0AXOBeoKJACLDBkaoKB.W6TrDTBoWGUZaVSeK', 'Super', '', 423523523, '24125235', 'administrator@super.com', 1, 1, 1),
(2, 'Master', '$2y$13$QWm63xquU8Tp5PjN0AXOBeoKJACLDBkaoKB.W6TrDTBoWGUZaVSeK', 'Doctor', '', 423523523, '24125235', 'master@doctor.com', 1, 2, 1),
(3, 'Doctor', '$2y$13$QWm63xquU8Tp5PjN0AXOBeoKJACLDBkaoKB.W6TrDTBoWGUZaVSeK', 'Smit', '', 423523523, '24125235', 'doctor@smit.com', 1, 3, 1),
(4, 'Doctor', '$2y$13$QWm63xquU8Tp5PjN0AXOBeoKJACLDBkaoKB.W6TrDTBoWGUZaVSeK', 'Ivan', '', 423523523, '24125235', 'doctor@ivan.com', 1, 3, 1),
(7, 'Doctor', '$2y$13$8hFO.N9SGtdhTKnv8LCuS.tAFCa3fXXJindKHVt8Iq6JQeDSibHZS', 'Frank', 'is74TorlyAb3tcgqZCVdV1YQ_7JBbjLl', 705110400, '1554252525', 'test@test.com', 0, 3, 1),
(8, 'Doctor', '$2y$13$QyzjGi/gZC1E37mqOshvROOcL2Sw7MQ5.zH2E.iO5yj0flbvXXjda', 'Potato', 'zppLyEoOr6GzazJuYQp4lZlvXGueprjm', 689904000, '22242444', 'doctor@potato.com', 0, 3, 1),
(10, 'Doctor', '$2y$13$HD0sIi8GXUSTx8CiE3LNrepV/q98hiHWnYpa0PswDrmOxzj/ZzEQW', 'Olive', '9LMsGLcrZS55vU10vISN_YS0J-Qf6uU6', 529113600, '5425235235', 'doctor@olive.com', 0, 3, 1),
(17, 'Doctor', '$2y$13$xA3sAsYppK37JIX7qybjZeeK2R/DWfIzRzjO4pO4BTvpWnPRvIsDm', 'Alfred', 'kTEw-88OoHhUlhafC8AeVWkRmkO0X9C6', 529113600, '542532', 'doctor@alfred.com', 2, 3, 1),
(18, 'Doctor', '$2y$13$6V0ngjTDSO8YmFBN0MQHOOVgNyumIl19ByL2UCf.Cj8cTwt1SRfJ2', 'Michael', 'BR2X4f1zHWQepcZCIj5hGaJ9sy-qWOgl', 881366400, '352523532', 'doctor@michael.com', 1, 3, 1),
(19, 'Master', '$2y$13$m9MS69iEzaGYbjmO95j3s.oLwIu49ZiD9YF8mpu4zgQW.DR0FuGnG', 'Doctor2', '-7FoVPVZytbhj3NXhjpUTd3HYndN27qo', 529113600, '3543525235', 'master@doctor2.com', 1, 2, 2),
(20, 'Doctor', '$2y$13$Z9r8dIbPkufNvgflv4PY7O.GRRbaberoi0uB9U5zN2VcEaNVJtqAK', 'Fox', 'k232dM9YDgIZKvnX97BQpN6XKAr-hRmq', 529113600, '3543525235', 'doctor@fox.com', 1, 3, 2),
(21, 'Doctor', '$2y$13$M.F58ofVJXcUneXxXEvRxO9ERuxtU8mOJ0g43FHPzOqND.RZdHF7O', 'Nike', 'IIqqr9RLEnrq1zTkJhVRMGRqjyB4kCNe', 529113600, '3543525235', 'doctor@nike.com', 2, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `vad_types_list`
--

CREATE TABLE `vad_types_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vad_types_list`
--

INSERT INTO `vad_types_list` (`id`, `name`) VALUES
(1, 'Vad type 1'),
(2, 'Vad type 2'),
(3, 'Vad type 3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `agents_list`
--
ALTER TABLE `agents_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `allergies_list`
--
ALTER TABLE `allergies_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `antibiotics`
--
ALTER TABLE `antibiotics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `antibiotics_list`
--
ALTER TABLE `antibiotics_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blood_cultures`
--
ALTER TABLE `blood_cultures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blood_cultures_main`
--
ALTER TABLE `blood_cultures_main`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `commisioning_boards_list`
--
ALTER TABLE `commisioning_boards_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `complications_list`
--
ALTER TABLE `complications_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `followup_notes`
--
ALTER TABLE `followup_notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gram_stains`
--
ALTER TABLE `gram_stains`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gram_stains_list`
--
ALTER TABLE `gram_stains_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `indications_list`
--
ALTER TABLE `indications_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interventions_list`
--
ALTER TABLE `interventions_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `managing_doctors_list`
--
ALTER TABLE `managing_doctors_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `micro_referrals`
--
ALTER TABLE `micro_referrals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `opat`
--
ALTER TABLE `opat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organisms`
--
ALTER TABLE `organisms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organisms_list`
--
ALTER TABLE `organisms_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `outcomes_list`
--
ALTER TABLE `outcomes_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pcat`
--
ALTER TABLE `pcat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `primary_infective_list`
--
ALTER TABLE `primary_infective_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reasons_list`
--
ALTER TABLE `reasons_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `referring_consultants_list`
--
ALTER TABLE `referring_consultants_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rvs_list`
--
ALTER TABLE `rvs_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `significants_list`
--
ALTER TABLE `significants_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specialties_list`
--
ALTER TABLE `specialties_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stewardships`
--
ALTER TABLE `stewardships`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vad_types_list`
--
ALTER TABLE `vad_types_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `agents_list`
--
ALTER TABLE `agents_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `allergies`
--
ALTER TABLE `allergies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `allergies_list`
--
ALTER TABLE `allergies_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `antibiotics`
--
ALTER TABLE `antibiotics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT для таблицы `antibiotics_list`
--
ALTER TABLE `antibiotics_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `blood_cultures`
--
ALTER TABLE `blood_cultures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `blood_cultures_main`
--
ALTER TABLE `blood_cultures_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `commisioning_boards_list`
--
ALTER TABLE `commisioning_boards_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `complications_list`
--
ALTER TABLE `complications_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `followup_notes`
--
ALTER TABLE `followup_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `gram_stains`
--
ALTER TABLE `gram_stains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT для таблицы `gram_stains_list`
--
ALTER TABLE `gram_stains_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `indications_list`
--
ALTER TABLE `indications_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `interventions_list`
--
ALTER TABLE `interventions_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `managing_doctors_list`
--
ALTER TABLE `managing_doctors_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `micro_referrals`
--
ALTER TABLE `micro_referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `opat`
--
ALTER TABLE `opat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `organisms`
--
ALTER TABLE `organisms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT для таблицы `organisms_list`
--
ALTER TABLE `organisms_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `outcomes_list`
--
ALTER TABLE `outcomes_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `pcat`
--
ALTER TABLE `pcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `primary_infective_list`
--
ALTER TABLE `primary_infective_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `reasons_list`
--
ALTER TABLE `reasons_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `referring_consultants_list`
--
ALTER TABLE `referring_consultants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `rvs_list`
--
ALTER TABLE `rvs_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `significants_list`
--
ALTER TABLE `significants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `specialties_list`
--
ALTER TABLE `specialties_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `stewardships`
--
ALTER TABLE `stewardships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT для таблицы `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `vad_types_list`
--
ALTER TABLE `vad_types_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
