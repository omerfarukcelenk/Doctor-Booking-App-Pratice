part of '../doctor_detail_screen.dart';

class DoctorDetailBody extends StatelessWidget {
  const DoctorDetailBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<DoctorDetailsBloc, DoctorDetailsState>(
      builder: (context, state) {
        final doctor = state.doctor!;
        return SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorCard(doctor: doctor),
              Divider(
                height: 32.0,
                color: colorScheme.surfaceVariant,
              ),
              DoctorWorkingHour(
                workingHours: doctor.workingHours,
              ),
            ],
          ),
        );
      },
    );
  }
}
