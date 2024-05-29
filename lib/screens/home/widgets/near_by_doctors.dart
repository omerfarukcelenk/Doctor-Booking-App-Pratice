part of '../home_screen.dart';

class NearByDoctors extends StatelessWidget {
  const NearByDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SectionTitle(
              title: 'Nearby Doctors',
              action: 'See all',
              onPressed: () {},
            ),
            const SizedBox(
              height: 8.0,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 24.0,
                  color: colorScheme.surfaceVariant,
                );
              },
              itemCount: state.nearbyDoctors.length,
              itemBuilder: (context, index) {
                final doctor = state.nearbyDoctors[index];
                return DoctorListTile(doctor: doctor);
              },
            )
          ],
        );
      },
    );
  }
}
