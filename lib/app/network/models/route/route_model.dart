import 'package:allybike/app/network/models/biking_ride/comment_model.dart';
import 'package:allybike/app/network/models/biking_ride/image_model.dart';
import 'package:allybike/app/network/models/biking_ride/user_model.dart';

class RouteModel {
  int id;
  DateTime date;
  String name;
  String descriptions;
  String type;
  int distance;
  String difficulty;
  String startPointLatitude;
  String startPointLongitude;
  String startPointName;
  String endPointLatitude;
  String endPointLongitude;
  String endPointName;
  int idUser;
  List<ImageModel> images;
  List<CommentModel> comments;
  UserModel user;

  RouteModel({
    required this.id,
    required this.date,
    required this.name,
    required this.descriptions,
    required this.type,
    required this.distance,
    required this.difficulty,
    required this.startPointLatitude,
    required this.startPointLongitude,
    required this.startPointName,
    required this.endPointLatitude,
    required this.endPointLongitude,
    required this.endPointName,
    required this.idUser,
    required this.images,
    required this.comments,
    required this.user,
  });

  factory RouteModel.fromJson(Map<String, dynamic> json) => RouteModel(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        name: json["name"],
        descriptions: json["descriptions"],
        type: json["type"],
        distance: json["distance"],
        difficulty: json["difficulty"],
        startPointLatitude: json["startPointLatitude"],
        startPointLongitude: json["startPointLongitude"],
        startPointName: json["startPointName"],
        endPointLatitude: json["endPointLatitude"],
        endPointLongitude: json["endPointLongitude"],
        endPointName: json["endPointName"],
        idUser: json["idUser"],
        images: List<ImageModel>.from(
            json["images"].map((x) => ImageModel.fromJson(x))),
        comments: List<CommentModel>.from(
            json["comments"].map((x) => CommentModel.fromJson(x))),
        user: UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "name": name,
        "descriptions": descriptions,
        "type": type,
        "distance": distance,
        "difficulty": difficulty,
        "startPointLatitude": startPointLatitude,
        "startPointLongitude": startPointLongitude,
        "startPointName": startPointName,
        "endPointLatitude": endPointLatitude,
        "endPointLongitude": endPointLongitude,
        "endPointName": endPointName,
        "idUser": idUser,
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments.map((x) => x.toJson())),
        "user": user.toJson(),
      };
}
