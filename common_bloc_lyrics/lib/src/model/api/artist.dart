import 'package:common_bloc_lyrics/common_bloc_lyrics.dart';

class Artist {
  final String name;

  const Artist({this.name});

  static Artist fromJson(dynamic json) {
    return Artist(
        name: json['name'] as String);
        }
}
