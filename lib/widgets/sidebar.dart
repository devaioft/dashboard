
import 'package:dashboard/widgets/my_list_tile.dart';
import 'package:dashboard/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const ProfileCard(),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            )),
          ),
          const MyListTile(
            title: "Parvati",
            imageSrc:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPNx5C5MTl-Wl5Tt__gsaKdW_HtQu7w2Rlxvd9-_qXbm7BribGOtkyvyo2Y_XRv9m11Zg&usqp=CAU',
          ),
          const MyListTile(
            title: "Pushpa 1",
            imageSrc:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPNx5C5MTl-Wl5Tt__gsaKdW_HtQu7w2Rlxvd9-_qXbm7BribGOtkyvyo2Y_XRv9m11Zg&usqp=CAU',
          ),
          const MyListTile(
            title: "Pushpa 1",
            imageSrc:
                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202201/Mahesh_Babu_Sarkaru_Vaari_Paat_1200x768.jpeg?o5mZVpk.hTSRebTk0fZ08MfbkJ6H_bqw&size=770:433',
          ),
        ],
      ),
    );
  }
}
