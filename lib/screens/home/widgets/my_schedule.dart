part of '../home_screen.dart';

class MySchedule extends StatelessWidget {
  const MySchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SectionTitle(
              title: 'My Schedule',
              action: 'See all',
              onPressed: () {},
            ),
            AppointmentPreviewCard(
              // appointment: state.myAppointments.firstOrNull,
            ),
          ],
        );
      },
    );
  }
}
