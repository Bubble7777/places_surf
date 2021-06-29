import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/ui/screen/res/colors.dart';
import 'package:places/ui/screen/sight_bottomNavBar.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({
    Key key,
    this.sight,
  }) : super(key: key);
  final Sight sight;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 360,
                child: Image.network(
                  'https://i.pinimg.com/originals/48/c9/d8/48c9d87b49c260322e54c550905f5b58.jpg',
                  width: 328,
                  fit: BoxFit.fill,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36, left: 16),
                child: FloatingActionButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Пряности и радости',
                    style: Theme.of(context).primaryTextTheme.headline5),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text('ресторан',
                        style: Theme.of(context).primaryTextTheme.subtitle2),
                    SizedBox(
                      width: 16,
                    ),
                    Text('закрыто до 09:00',
                        style: Theme.of(context).primaryTextTheme.bodyText1),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '''Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного''',
              style: Theme.of(context).primaryTextTheme.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: ElevatedButton.icon(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(Size(328, 48)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/union.svg',
                  height: 22,
                  width: 20,
                ),
                label: Text(
                  'ПОСТРОИТЬ МАРШРУТ',
                  style: Theme.of(context).primaryTextTheme.subtitle2,
                )),
          ),
          Divider(
            indent: 16,
            endIndent: 16,
            color: Color(0xFF7C7E92).withOpacity(0.24),
            height: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    minimumSize: MaterialStateProperty.all(
                      Size(164, 40),
                    ),
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/calendar.svg',
                    height: 24,
                    width: 24,
                  ),
                  label: Text('Запланировать',
                      style: Theme.of(context).primaryTextTheme.subtitle2),
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      minimumSize: MaterialStateProperty.all(
                        Size(164, 40),
                      ),
                    ),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      height: 24,
                      width: 24,
                    ),
                    label: Text(
                      'В Избранное',
                      style: Theme.of(context).primaryTextTheme.subtitle2,
                    )),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
