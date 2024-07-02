import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_taking_app/core/models/note_card_model.dart';
import 'package:note_taking_app/core/utils/app_text_styles.dart';
import 'package:note_taking_app/core/utils/widgets/custom_container.dart';
import 'package:note_taking_app/features/home/presentation/views/widgets/section_card_image.dart';
import 'package:note_taking_app/features/notes/domain/entites/notes_entity.dart';

class SectionCardItem extends StatefulWidget {
  const SectionCardItem({
    super.key,
    required this.sectionsModel,
  });

  final NoteCardModel sectionsModel;

  @override
  State<SectionCardItem> createState() => _SectionCardItemState();
}

class _SectionCardItemState extends State<SectionCardItem> {
  int noteCount = 0;
  void updateNoteCount() {
    setState(() {
      noteCount = Hive.box<NotesEntity>(widget.sectionsModel.title).length;
    });
  }

  @override
  void initState() {
    updateNoteCount();
    // Add listener to update count on changes
    Hive.box<NotesEntity>(widget.sectionsModel.title).watch().listen((event) {
      updateNoteCount();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 171, maxHeight: 171),
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 5,
          shadowColor: const Color(0xffeae7fd),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: CustomContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NoteCardItemImage(
                  image: widget.sectionsModel.image,
                ),
                const SizedBox(height: 14),
                Text(
                  widget.sectionsModel.title,
                  style: AppTextStyles.textStyle16ExtraBold,
                ),
                Text(
                  '$noteCount Files',
                  style: AppTextStyles.textStyle16SemiBold,
                ),
                Text(
                  '${widget.sectionsModel.size}  GB',
                  style: AppTextStyles.textStyle10Medium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
