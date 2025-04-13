import 'objectbox.g.dart'; // This file is generated
import 'models/note.dart';

late final Store store;
late final Box<Note> noteBox;

Future<void> initObjectBox() async {
  store = await openStore();
  noteBox = store.box<Note>();
}