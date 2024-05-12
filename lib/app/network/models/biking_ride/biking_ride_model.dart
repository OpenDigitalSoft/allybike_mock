import 'comment_model.dart';
import 'image_model.dart';
import 'user_model.dart';

class BikingRideModel {
  int id;
  String name;
  DateTime date;
  String organizer;
  String links;
  int idUser;
  List<ImageModel> images;
  List<CommentModel> comments;
  UserModel user;

  BikingRideModel({
    required this.id,
    required this.name,
    required this.date,
    required this.organizer,
    required this.links,
    required this.idUser,
    required this.images,
    required this.comments,
    required this.user,
  });

  factory BikingRideModel.fromJson(Map<String, dynamic> json) =>
      BikingRideModel(
        id: json["id"],
        name: json["name"],
        date: DateTime.parse(json["date"]),
        organizer: json["organizer"],
        links: json["links"],
        idUser: json["idUser"],
        images: List<ImageModel>.from(
            json["images"].map((image) => ImageModel.fromJson(image))),
        comments: List<CommentModel>.from(
            json["comments"].map((comment) => CommentModel.fromJson(comment))),
        user: UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "date": date.toIso8601String(),
        "organizer": organizer,
        "links": links,
        "idUser": idUser,
        "images": List<dynamic>.from(images.map((image) => image.toJson())),
        "comments":
            List<dynamic>.from(comments.map((comment) => comment.toJson())),
        "user": user.toJson(),
      };
}
