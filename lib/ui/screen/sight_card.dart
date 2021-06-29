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
                        style: Theme.of(context).primaryTextTheme.subtitle2,
                      ),
                      IconButton(
                          padding: EdgeInsets.only(bottom: 20),
                          icon: SvgPicture.asset(
                            'assets/icons/heart.svg',
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
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          // alignment: Alignment.topLeft,
          width: 328,
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sight.name,
                    maxLines: 2,
                    style: Theme.of(context).primaryTextTheme.subtitle1),
                ConstrainedBox(
                  constraints: BoxConstraints.expand(width: 164, height: 46),
                  child: Text(
                    sight.details,
                    style: Theme.of(context).primaryTextTheme.bodyText1,
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
