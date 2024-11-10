import 'package:flutter/material.dart';
import 'package:birthly/models/birthday.dart';
import 'package:hive_flutter/adapters.dart';

class BirthdayList extends StatelessWidget {
  const BirthdayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<Birthday>('birthdays').listenable(),
      builder: (context, Box<Birthday> box, _) {
        if (box.isEmpty) {
          return const Center(
            child: Text('No birthdays added yet!'),
          );
        }
        return ListView.builder(
          itemCount: box.length,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          itemBuilder: (context, index) {
            final birthday = box.getAt(index);
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(vertical: 8),
              elevation: 3,
              child: ListTile(
                title: Text(birthday!.name),
                subtitle: Text(
                  '${birthday.date.day}/${birthday.date.month}/${birthday.date.year} (Age: ${birthday.age})',
                ),
                onTap: () {
                  _showBirthdayDetails(context, birthday);
                },
              ),
            );
          },
        );
      },
    );
  }

  void _showBirthdayDetails(BuildContext context, Birthday birthday) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(birthday.name),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Date: ${birthday.date.day}/${birthday.date.month}/${birthday.date.year}'),
              Text('Age: ${birthday.age}'),
              if (birthday.notes!.isNotEmpty) Text('Notes: ${birthday.notes}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
