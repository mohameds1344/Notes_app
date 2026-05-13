import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          body: const NostesViewBody(),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 10),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(-7, 8),
                  ),
                ],
              ),
              child: SizedBox(
                height: 70,
                width: 70,
                child: FloatingActionButton(
                  backgroundColor: Color(0xff252525),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  onPressed: () {
                    final notesCubit = context.read<NotesCubit>();
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      context: context,
                      builder: (context) {
                        return BlocProvider.value(
                          value: notesCubit,
                          child: AddNoteBottomSheet(),
                        );
                      },
                    );
                  },
                  child: Icon(Icons.add, color: Colors.white, size: 40),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
