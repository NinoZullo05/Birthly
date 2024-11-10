import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:birthly/models/birthday.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<Birthday>('birthdays').listenable(),
      builder: (context, Box<Birthday> box, _) {
        final upcomingBirthdays = _getUpcomingBirthdays(box);
        return ListView.builder(
          itemCount: upcomingBirthdays.length,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          itemBuilder: (context, index) {
            final birthday = upcomingBirthdays[index];
            final daysUntil = _getDaysUntilBirthday(birthday.date);
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                contentPadding: const EdgeInsets.all(15),
                title: Text(
                  birthday.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(
                  'In $daysUntil days',
                  style: TextStyle(color: Theme.of(context).primaryColorDark),
                ),
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColorLight,
                  child: Text(
                    birthday.name[0],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  List<Birthday> _getUpcomingBirthdays(Box<Birthday> box) {
    final now = DateTime.now();
    final birthdays = box.values.toList();
    birthdays.sort((a, b) {
      final aDays = _getDaysUntilBirthday(a.date);
      final bDays = _getDaysUntilBirthday(b.date);
      return aDays.compareTo(bDays);
    });
    return birthdays.take(5).toList();
  }

  int _getDaysUntilBirthday(DateTime birthday) {
    final now = DateTime.now();
    final nextBirthday = DateTime(now.year, birthday.month, birthday.day);
    if (nextBirthday.isBefore(now)) {
      return DateTime(now.year + 1, birthday.month, birthday.day)
          .difference(now)
          .inDays;
    }
    return nextBirthday.difference(now).inDays;
  }
}
