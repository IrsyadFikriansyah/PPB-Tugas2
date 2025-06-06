import 'package:objectbox/objectbox.dart';

@Entity()
class Note {
  @Id()
  int id;

  String title;
  String content;

  Note({this.id = 0, required this.title, required this.content});
}