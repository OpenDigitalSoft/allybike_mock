import 'user_model.dart';

class CommentModel {
  String comment;
  DateTime date;
  UserModel user;

  CommentModel({
    required this.comment,
    required this.date,
    required this.user,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => CommentModel(
        comment: json["comment"],
        date: DateTime.parse(json["date"]),
        user: UserModel.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "comment": comment,
        "date": date.toIso8601String(),
        "user": user.toJson(),
      };
}
