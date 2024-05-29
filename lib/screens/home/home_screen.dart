
import 'package:doctor_booking_app_pratice/shared/widgets/avatars/circle_avatar_with_text_label.dart';
import 'package:doctor_booking_app_pratice/shared/widgets/bottom_nav_bars/main_nav_bar.dart';
import 'package:doctor_booking_app_pratice/shared/widgets/cards/appointment_preview_card.dart';
import 'package:doctor_booking_app_pratice/shared/widgets/list_tiles/doctor_list_tile.dart';
import 'package:doctor_booking_app_pratice/state/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';

import '../../shared/widgets/section_title.dart';

part 'widgets/app_bar_bottom.dart';
part 'widgets/app_bar_title.dart';
part 'widgets/home_body.dart';
part 'widgets/doctor_categories.dart';
part 'widgets/my_schedule.dart';
part 'widgets/near_by_doctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // create a bloc and provide it to the homeview
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Create the homeview UI
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: AppBarTitle(textTheme: textTheme, colorScheme: colorScheme),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          const SizedBox(
            width: 8.0,
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64.0),
          child: AppBarBottom(colorScheme: colorScheme),
        ),
      ),
      bottomNavigationBar: MainNavBar(),
      body: HomeBody(),
    );
  }
}



