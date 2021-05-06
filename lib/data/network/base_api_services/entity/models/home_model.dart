class LastEventModel {
  LastEventModel({
    this.idEvent,
    this.title,
    this.thumbnail,
    this.location,
    this.long,
    this.lat,
    this.price,
    this.startDate,
    this.finishDate,
  });

  dynamic idEvent;
  String title;
  String thumbnail;
  String location;
  String long;
  String lat;
  String price;
  String startDate;
  String finishDate;

  factory LastEventModel.fromJson(Map<String, dynamic> json) => LastEventModel(
        idEvent: json["id_event"].toInt() ?? null,
        title: json["title"] ?? null,
        thumbnail: json["thumbnail"] ?? null,
        location: json["location"] ?? null,
        long: json["long"] ?? null,
        lat: json["lat"] ?? null,
        price: json["price"] ?? null,
        startDate: json["start_date"] ?? null,
        finishDate: json["finish_date"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id_event": idEvent ?? null,
        "title": title ?? null,
        "thumbnail": thumbnail ?? null,
        "location": location ?? null,
        "long": long ?? null,
        "lat": lat ?? null,
        "price": price ?? null,
        "start_date": startDate ?? null,
        "finish_date": finishDate ?? null,
      };
}
