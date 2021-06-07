import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:places/domain/sight.dart';

class SightCard extends StatelessWidget {
  const SightCard({Key key, this.sight}) : super(key: key);
  final Sight sight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(top: 16.0),
            width: 328,
            height: 96,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(sight.url),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )),
            child: Container(
              margin: EdgeInsets.only(left: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    sight.type,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto-Regular',
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      padding: EdgeInsets.only(bottom: 20),
                      icon: SvgPicture.asset(
                        'res/assets/icons/heart.svg',
                        color: Colors.white,
                        height: 20,
                        width: 18,
                      ),
                      onPressed: () {})
                ],
              ),
            )),
        Container(
          alignment: Alignment.topLeft,
          width: 328,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sight.name,
                  maxLines: 2,
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF3B3E5B),
                  ),
                ),
                Text(
                  sight.details,
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7C7E92),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
