-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 24 2022 г., 11:05
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kchr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
CREATE TABLE `data` (
  `id` int NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `imgSrc` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mapSrc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gps` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `title`, `body`, `imgSrc`, `date`, `mapSrc`, `gps`) VALUES
(1, 'Софийские озера', 'На высоте 2 800 метров над уровнем моря вы увидите одну из главных достопримечательностей Карачаево-Черкесии. Название системе из трех кристально чистых озер дала гора София, находящаяся рядом. Пеший маршрут к водоемам непростой, но все усилия компенсируются умопомрачительными видами на горные луга, и близлежащее село – знаменитый Архыз.\r\nПодъем к Софийским озерам по крутым горным склонам займет 4-5 часов. Купаться в них затруднительно: вода прогревается медленно, максимальная температура – +12 °C. Но тысячи туристов приезжают сюда совсем не ради купания: местная природа и пейзажи стоят непростого пути.', 'img/58362fcf8860cafbd6a3649cffbff91c.jpeg', '2022-05-24 10:49:48', 'https://yandex.ru/map-widget/v1/?um=constructor%3A292fe07a7852db164caed1b7579bff392d6d0712039a92340fd237eedb57bf1b&amp;source=constructor', '43.450833, 41.230833'),
(2, 'Софийские водопады', 'Водные артерии Архыза. Долины горы Софии подарили множество достопримечательностей Карачаево-Черкесии. Софийский ледник в процессе таяния образовал систему из 9 каскадных водопадов, которые, в свою очередь, питают реку София. Софийские водопады – это грандиозное зрелище: потоки воды срываются с горных склонов на высоту от 70 до 90 метров. Поблизости вы найдете много площадок для кемпинга и горнолыжную базу. Маршрут к водопадам несложный и не требует специальной подготовки.\r\n', 'img/5803d16cfc5aced9b347bd96d6e1c9a0.jpg', '2022-05-24 10:52:12', 'https://yandex.ru/map-widget/v1/?um=constructor%3A2c112099ebd8509e9efab5ef323aebf6904327eb3c05df4da48736fb65dd2463&amp;source=constructor', '43.450833, 41.230833'),
(3, 'Научная обсерватория САО РАН', 'Встреча со звездами. Карачаево-Черкесия славится не только природными красотами – здесь вы увидите известную на весь мир обсерваторию с крупнейшим в Евразии Большим Азимутальным Телескопом (БТИ). Учреждение носит статус открытого, поэтому попасть сюда могут не только ученые, но и простые туристы – в обсерватории проводятся экскурсии и сеансы наблюдения за космосом для всех желающих.', 'img/2cfb7071a298900144987fac3f0d8481.jpg', '2022-05-24 10:54:10', 'https://yandex.ru/map-widget/v1/?um=constructor%3A1ba062512c71da32ad6d49680c1379ed2d9e96e0ca7ab166cb0de65b75c83630&amp;source=constructor', '43.647222, 41.441389'),
(4, 'Наскальный лик Христа', 'Таинственное христианское чудо.\r\n20 лет назад вблизи Архыза в гроте на высокой скале обнаружили необычный наскальный рисунок с ликом Иисуса Христа. С тех пор изображение размером 80х140 см не дает покоя ученым. Его происхождение по-прежнему окутано тайной.\r\nЕдинственное на сегодня весомое предположение – в IX-X веке во время путешествия по этим исконно мусульманским местам лик Христа на скалу нанес византийский художник. Это похоже на правду, ведь неподалеку пролегал Великий Шелковый путь, на котором странствующих было хоть отбавляй. К удивительной иконе, собирающей тысячи верующих со всего света, проложена лестница с местами для остановок по пути.', 'img/72050b02f6c54a0b443bd8c00c722228.jpg', '2022-05-24 10:57:44', 'https://yandex.ru/map-widget/v1/?um=constructor%3Aec2d9fd1b3288e3457a9151b5057b2e9139d0ffa520685498034e29fb4fa4626&amp;source=constructor', '43.686728 41.470679'),
(5, 'Озеро Любви', 'Лазурное сердце высокогорья.\r\nПоселок Архыз неспроста получил широкую известность – поблизости вы найдете десятки красивейших мест Карачаево-Черкесии. Например, Озеро Любви, которое знаменито идеальной формой в виде сердца – а это, конечно же, породило множество сказаний и мифов среди местных жителей. Водоем расположен на высоте 2 350 метров, и маршрут к нему не самый простой, однако виды сердца-озера на фоне альпийских лугов стоят стараний.\r\n', 'img/450574f51fcfcbb9159a38e6d41800b4.jpg', '2022-05-24 10:57:44', 'https://yandex.ru/map-widget/v1/?um=constructor%3A97d5ce3822750cee4f5409f053bbb954174a6bb63de22c2f892578a5172c7586&amp;source=constructor', ' 43.536667, 41.338056'),
(6, 'Бадукские озера', 'Жемчужины Домбая.\r\nОколо 150-200 лет назад в долине реки Бадук между двумя горными хребтами Домбая произошел обвал горных пород – так образовалась система из трех живописных озер, которые входят в список самых красивых мест Карачаево-Черкесии.\r\nЦвет воды здесь меняется в зависимости от погоды и времени суток – от лазурно-голубого до глубокого фиолетового. Температура в озерах редко поднимается выше +10℃, хотяэтоинеостанавливаетлюбителей озерных купаний. Дорога к Бадукским озерам займет 4-5 часов.\r\n', 'img/92ce676709275aaaef8466dbbda81341.jpg', '2022-05-24 10:57:44', 'https://yandex.ru/map-widget/v1/?um=constructor%3A8fa6137888894683018aa6e1f81b3d7fbabffcd8bfac9e1bd62e798fda63533d&amp;source=constructor', '43.3736, 41.6561'),
(7, 'Водопад Алибек', 'Живительный источник Домбая.\r\nСамый известный водопад Карачаево-Черкесии находится на Домбайской поляне. Алибек имеет не самую большую высоту падения (25 метров), но остается популярным объектом среди активных туристов из-за красоты и мощи водного потока. Тропа к водопаду начинается у альплагеря «Алибек» (это крайняя точка, до которой можно доехать на авто), дальнейший пешеходный маршрут обустроен местами для отдыха.', 'img/b09eb15885d6ced12683f67e2d1f2aca.jpeg', '2022-05-24 11:02:19', 'https://yandex.ru/map-widget/v1/?um=constructor%3A9972434711593ab60a703ac0c0395a9087b45d4bc6c4818476a94d42c8eda845&amp;source=constructor', '43.2987538, 41.5563402'),
(8, 'Озеро Туманлы-Кёль', 'Форелевый заповедник. Продолжаем изучать самые красивые места Домбая. На очереди – озеро возрастом в 2 000 лет, название которого переводится как «туманное место». И оно оправдано, ведь на высоте 1 850 метров над уровнем моря туманы – не редкость.К живописному озеру Туманлы-Кёль проложен простейший на Домбае туристический маршрут – он целиком без труда преодолевается на авто. Туристы едут сюда, чтобы посмотреть на форель (второе название озера – Форелевое) и покормить рыб – самим полакомиться не выйдет: в природоохранной зоне рыбалка запрещена. Смельчаки могут искупаться – как и любое ледниковое озеро, Туманлы-Кёль плохо прогревается.', 'img/7eae9125b17644ade0a015f6bd4fdbe8.jpg', '2022-05-24 11:02:19', 'https://yandex.ru/map-widget/v1/?um=constructor%3A837810e40fbaceb10ca633a33e0f116ec98692a2d135a544aa529deef18f45e1&amp;source=constructor', '43.285443, 41.792759'),
(9, 'Канатные дороги Домбая', 'Путь к горным вершинам.\r\nГорная местность Домбая, конечно же, не может обойтись без канатных дорог и подъемников. Здесь работает целый комплекс, который нужен не только для любителей горнолыжного спорта, но и для тех, кто хочет подняться как можно выше и осмотреть горы с высоты (максимум – 3 168 метров). На Домбае вы обнаружите практически схему метро – тут одновременно действуют старая и новая системы канатных дорог, всего их 9 штук. Туристы без лыж чаще пользуются живописной дорогой, построенной еще в советское время – очередью №5. Эта дорога идет вдоль горного склона Мусса-Ачитара, с вершины которого в ясную погоду открываются прекрасные виды на Эльбрус и Гоначхирское ущелье. Обязательно воспользуйтесь этим видом транспорта – в горах он уже давно стал туристическим.', 'img/f77a236057063034d3f2cac63c35393f.jpg', '2022-05-24 11:02:19', 'https://yandex.ru/map-widget/v1/?um=constructor%3A4efb4cec22340e694fb84418d151d8bdbc2573c76b15136377cbbba411355504&amp;source=constructor', '43.294228, 41.653613'),
(10, 'Пещера Южный Слон', 'Уникальный подземный памятник. На высоте 1 770 метров вблизи села Рожкао вы найдете самую знаменитую пещеру Карачаево-Черкесии. Удивительный подземный комплекс «Южный слон» образовался в толще известняков. Этой пещерой пользовались еще древние люди – здесь были найдены останки ископаемого медведя. В наше время подземный комплекс длиной в 1 000 метров можно посетить бесплатно, но не забудьте запастись подходящей обувью, одеждой и снаряжением – вход в пещеру находится на пятиметровой глубине.', 'img/329912c40414c4d436014deea3ac1285.jpg', '2022-05-24 11:02:19', 'https://yandex.ru/map-widget/v1/?um=constructor%3A3f90c086ad6800694c3b0f6326289bad8edc38a902391a473bcedfb2c73cfe16&amp;source=constructor', '43.8094444, 40.8311111'),
(11, 'Зоопарк Тебердинского заповедника и музей', 'Это вольерный комплекс, которые от обычного зоопарка отличается тем, что животные здесь содержатся не в клетках, а просторных вольерах. В нем есть олени, зайцы, утки, гуси, кабаны, еноты, козы, бизоны, лисицы, грифы, волки, медведи, шакалы, рысь (очень старая), кавказские туры, лесная кошка, енотовидная собака и др., в том числе краснокнижные. Разнообразие не очень большое, зато условия их содержания удовлетворительные, отчего это место понравится практически каждому, особенно детям.', 'img/teberda-zoopark.jpg', '2022-05-24 11:02:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3Ab88a26c8ccd5d99b9c4c196ddb562fd6548f32ec2cb5c81bbdb62b9d190ca669&amp;source=constructor', '43.315409, 41.702487'),
(12, 'Джамагатские нарзаны и ущелье', 'Это природные источники холодной минеральной воды в ущелье Джамагат. Чтобы попасть к ним, организован туристический маршрут по Тебердинскому заповедник, конечной точкой которого и являются нарзаны. Но интересен маршрут не только ими, но и горной рекой и открывающимися великолепными видами на горы. Проти его можно полностью пешком (8 километров из центра Теберды), проехать на своем автомобиле или воспользоваться экскурсией на джипах.', 'img/djamagat.jpg', '2022-05-24 11:03:05', 'https://yandex.ru/map-widget/v1/?um=constructor%3A938300703f13c83bf74cbff387d575b4de729321c8c818583ea324c02170bec8&amp;source=constructor>', '43.451396, 41.824081'),
(13, 'Термальные источники', 'Термальные источники находятся довольно далеко от Домбая и Теберды рядом с Черкесском, а это более 120 километров. Тем не менее, они являются довольно популярным место для посещения со всех курортов Карачаево-Черкесии, тем более, что работают они круглый год, и поэтому даже зимой можно в них искупаться. Но удобнее всего, конечно, посетить их по пути на курорты, поскольку большинство маршрутов все равно ведет через город Черкесск.', 'img/gorki.jpg', '2022-05-24 11:03:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3Ab7468217006844f3fb6d901db6fc4efb6bf731733a732bc7fd6abcf99b87f0ee&amp;source=constructor', '3.2894, 41.6235'),
(14, 'Шоанинский храм', 'Шоанинский храм возведен в конце X века, и есть версия (не подтвержденная), что это древнейший христианский храм на территории России. Однако если разбираться с периодом постройки, то предположительно Шоанинский храм появился в конце Х — начале XI вв, что позже, чем Зеленчукские храмы в Нижнем Архызе и даже Сентинский храм. Сегодня его можно посетить как историческое место, детально его осмотреть. Рядом находятся также руины других старинных построек, поскольку склон холма, на котором он расположен, ранее был плотно застроен и заселен.', 'img/shoaninskiy-hram.jpg', '2022-05-24 11:04:39', 'https://yandex.ru/map-widget/v1/?um=constructor%3A284166536328af2e522a462e78d07c0a374610c52ae287fdbcd168f543ea0336&amp;source=constructor', '43.804113, 41.888714'),
(15, 'Софийские озера и водопады', 'Это самый популярный и живописный туристический маршрут в Архызе, а возможно и всей Карачаево-Черкесии. Озера и водопады образовались из вод таящего ледника, укрывающего склоны горы София высотой 3637 метров, самой высокой из целой группы вершин. Туристический маршрут считается однодневным, но пешком за один день его преодолеть невозможно, поскольку пройти придется 18 километров в одну сторону. Поэтому водопады и озера обычно посещают на транспорте или на лошадях с экскурсией. Но не стоит обольщаться, что это будет простая поездка, поскольку автомобили могут доехать только до подножия гор, а уже до водопадов и озер придется подниматься пешком на высоту около 300 метров и 900 соответственно.', 'img/sofiyskie.jpg', '2022-05-24 11:04:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3A292fe07a7852db164caed1b7579bff392d6d0712039a92340fd237eedb57bf1b&amp;source=constructor', '43.450833, 41.230833'),
(16, 'Баритовый водопад', 'Это одна из самых популярных достопримечательностей рядом с Архызом, которую можно посетить самостоятельно в виде простого однодневного туристического маршрута, причем совершенно бесплатно. Водопад находится не на территории Тебердинского заповедника, и потому доступ к нему бесплатный и не требуется никаких пропусков от пограничников для посещения приграничной зоны.', 'img/barytoviy-vodopad-arkhyz.jpg', '2022-05-24 11:05:19', 'https://yandex.ru/map-widget/v1/?um=constructor%3A689cef0c572e19c5c912a100c27f8bffd32b1b4148be575f760197b27b01bd3c&amp;source=constructor', '43.586917, 41.278583'),
(17, 'Озера Дукка', 'Это горные озера, образованные на реке Дукка, а точнее на ее притоках. К ним ведет живописный туристический однодневный маршрут из Архыза, доступный туристам без опыта. Дорога проходит вдоль горной реки с водопадами, притоками из горных ручьев, и, конечно же, по пути будут открываться захватывающие виды на горы и долину. В озерах можно купаться, но вода очень холодная, ведь они образованы из вод таящих снегов. Технически путь к озерам не сложный, но сил понадобится много, поскольку даже по самому короткому маршруту нужно преодолеть пешком в одну сторону 4 километра и 470 метров по высоте.', 'img/ozera-dukka.jpg', '2022-05-24 11:05:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3A3a4d969f9f3ec731b3f7339f61ded4f10fb4e4faa77c3948c263014275055462&amp;source=constructor', '43.533316, 41.049494'),
(18, 'Аланское городище', 'Считается, что в окрестностях Архыза можно увидеть много исторических памятников – руин периода древнего аланского царства. Но единственным обустроенным местом, где можно познакомиться с наследием той эпохи является музей под открытым небом, Нижне-Архызский историко-архитектурный археологический комплекс или просто Аланское городище. Он располагается предположительно на месте древней столицы аланского государства – города Маас. Он занимает большую площадь, так что перемещаться лучше на автомобиле или хотя бы велосипеде. Всего в настоящее время здесь располагается три древних храма (одни из них действующий), статуя воина-тюрка, и каменный круг, предположительно служивший солнечным календарем.', 'img/alanskoe-gorodishe-arkhyz.jpg', '2022-05-24 11:06:11', 'https://yandex.ru/map-widget/v1/?um=constructor%3A2838da369816c5e9801e8ee6a7a4b672a064559e54664e8c04fafdfbe935f63b&amp;source=constructor', '43.685710, 41.477783'),
(19, 'Нерукотворный образ Христа на скале', 'Это икона с изображением Иисуса, выполненная на скале рядом с Нижним Архызом. Она была обнаружена в 1999 году, и с тех пор считается священной. Для ее почитания даже был построен храм поблизости, и ежегодно сюда устремляются тысячи верующих. Однако историки и исследователи полагают, что изображение на скале было нанесено человеком в IX-XI веках, а некоторые даже выдвигают версию о современном происхождении лика. Как бы там ни было, место это интересное и стоит посещения.', 'img/obraz-hrista-na-skale.jpg', '2022-05-24 11:06:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3Aec2d9fd1b3288e3457a9151b5057b2e9139d0ffa520685498034e29fb4fa4626&amp;source=constructor', '43.686728 41.470679'),
(20, 'Канатные дороги Архыза', 'В самом поселке Архыз горнолыжных подъемников нет, все они располагаются в поселке Романтик и на Лунной поляне в10 километрах. Именно там проводят большую часть времени любители горных лыж, но интересно будет воспользоваться ими и тем, кто горными лыжами не увлекается. Часть канатных дорог работает, в том числе, и летом. Канатки ведут на вершины и склоны соседних гор, откуда открываются потрясающие виды на горные вершины, покрытые, в том числе и ледниками. При желании можно прогуляться по тропам или горнолыжным трассам, дойти до горных ручьев, или даже спуститься обратно в поселок пешком.', 'img/kanatka.jpg', '2022-05-24 11:07:59', 'https://yandex.ru/map-widget/v1/?um=constructor%3Ada57eb289aaf6f69d4652c68db7747b89fee58595f2bb6d0626e85571d37f956&amp;source=constructor', '43.5632, 41.2813');

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `ref_id` int NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  `grade` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `ref_id`,`name`, `comment`, `grade`, `date`) VALUES
(1, 3, 'Ахмед', 'Был там, очень понравилось', 5, '2022-06-04 14:40:18');

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `ref_id` int NOT NULL,
  `img_src` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
