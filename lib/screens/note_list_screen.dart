import 'package:flutter/material.dart';
import '../models/note.dart';
import '../objectbox_helper.dart';
import 'edit_note_screen.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  List<Note> notes = [];

  void _refreshNotes() {
    setState(() {
      notes = noteBox.getAll();
    });
  }

  void _deleteNote(int id) {
    noteBox.remove(id);
    _refreshNotes();
  }

  void _openEditor({Note? note}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => EditNoteScreen(note: note)),
    );
    _refreshNotes();
  }

  @override
  void initState() {
    super.initState();
    _refreshNotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ObjectBox Notes")),
      body: notes.isEmpty
          ? const Center(child: Text("No notes yet."))
          : ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final note = notes[index];
                return ListTile(
                  title: Text(note.title),
                  subtitle: Text(note.content),
                  onTap: () => _openEditor(note: note),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteNote(note.id),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openEditor(),
        child: const Icon(Icons.add),
      ),
    );
  }
}