import 'package:flutter/material.dart';

class MainNavBar extends StatelessWidget {
  const MainNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BottomNavigationBar(
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onBackground.withOpacity(.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 14,
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          switch (index) {
            case 0:
              print(index);
              break;
            case 1:
              print(index);
              break;
                           
            default:
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: 'explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Discovery'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Profile'),
        ]);
  }
}
