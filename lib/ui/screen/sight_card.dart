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
        SizedBox(
          height: 16,
        ),
        Container(
            width: 328,
            height: 96,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Image.network(
                    sight.url,
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
                Container(
                  margin: EdgeInsets.only(left: 16, top: 16),
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
                ),
              ],
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
                ConstrainedBox(
                  constraints: BoxConstraints.expand(width: 164, height: 46),
                  child: Text(
                    sight.details,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Roboto-Regular',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7E92),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
