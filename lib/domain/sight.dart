class Sight {
  String name; //название достопримечательности
  double lat; // координаты места
  double lon; //  координаты места
  String url; // путь до фотографии в интернете
  String details; //описание достопримечательности
  String type; //тип достопримечательностb

  Sight(
    String name,
    double lat,
    double lon,
    String url,
    String details,
    String type,
  ) {
    this.name = name;
    this.lat = lat;
    this.lon = lon;
    this.url = url;
    this.details = details;
    this.type = type;
  }
}
