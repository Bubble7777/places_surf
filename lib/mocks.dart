import 'package:places/domain/sight.dart';

List<Sight> mocks = [];

void add() {
  mocks.add(
    Sight(
        'Эйфелева башня',
        48.858093,
        2.294694,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg/300px-Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
        'Металлическая башня в центре Парижа, самая узнаваемая его архитектурная достопримечательность.',
        'Башня'),
  );
  mocks.add(
    Sight(
        'Статуя Свободы',
        40.6892776,
        74.0445938,
        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Statue_of_Liberty%2C_NY.jpg/280px-Statue_of_Liberty%2C_NY.jpg',
        'Статуя Свободы — второй по высоте маяк страны, однако она выполняет световую навигационную роль для морских судов как свою вторичную функцию, поэтому в списки маяков страны её не включают.',
        'Статуя'),
  );
  mocks.add(Sight(
      'Бурдж-Халифа',
      25.19722,
      55.27417,
      'https://upload.wikimedia.org/wikipedia/ru/thumb/2/2f/Burj_Khalifa_building.jpg/266px-Burj_Khalifa_building.jpg',
      'Сверхвысотный небоскрёб высотой 828 метров в Дубае, самое высокое и самое многоэтажное здание, самое высокое сооружение, единственный 828-метровый и 163-этажный небоскрёб в мире.',
      'Небоскрёб'));
}
