//*** SHARED MODELS
// kondisi jika data property json sama dengan url path lain
// -------------------

class DetailRatingModel {
  DetailRatingModel({
    this.nama,
    this.comment,
    this.jumlahRating,
  });

  String nama;
  String comment;
  dynamic jumlahRating;

  factory DetailRatingModel.fromJson(Map<String, dynamic> json) =>
      DetailRatingModel(
        nama: json["nama"] ?? null,
        comment: json["comment"] ?? null,
        jumlahRating: json["jumlah_rating"].toDouble() ?? null,
      );

  Map<String, dynamic> toJson() => {
        "nama": nama ?? null,
        "comment": comment ?? null,
        "jumlah_rating": jumlahRating ?? null,
      };
}
